class ChatMessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @chat_partner = User.find(params[:user_id])

    @chat_messages = ChatMessage.where(
      "(sender_id = ? AND receiver_id = ?) OR (sender_id = ? AND receiver_id = ?)",
      current_user.id, @chat_partner.id, @chat_partner.id, current_user.id
    ).order(:created_at)

    @chat_message = ChatMessage.new
  end

  def create
    @chat_message = current_user.sent_chat_messages.build(chat_message_params)
    if @chat_message.save
      [@chat_message.sender_id, @chat_message.receiver_id].each do |user_id|
        Turbo::StreamsChannel.broadcast_append_to(
          "chat_#{user_id}_with_#{@chat_message.receiver_id}",
          target: "chat_messages",
          partial: "chat_messages/chat_message",
          locals: { chat_message: @chat_message, current_user: current_user }
        )
      end
      head :ok
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def chat_message_params
    params.require(:chat_message).permit(:content, :receiver_id)
  end
end

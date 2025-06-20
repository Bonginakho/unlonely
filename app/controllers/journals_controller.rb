class JournalsController < ApplicationController
  before_action :set_journal, only: %I[show edit update]

    def index
      @journals_by_week = Journal.order(:week).index_by(&:week)
      @weeks = @journals_by_week.keys.sort
      @current_week = params[:week]&.to_i || @weeks.first #current week or revert to week 1
      @journal = @journals_by_week[@current_week]
      #navigation part in the view
      current_index = @weeks.index(@current_week)
      @has_previous = current_index && current_index > 0
      has_next = current_index && current_index < @weeks.size - 1

    if params[:user_id].present?
      @chat_partner = User.find(params[:user_id])

      @chat_messages = ChatMessage.where(
        "(user_id = ? AND receiver_id = ?) OR (user_id = ? AND receiver_id = ?)",
        current_user.id, @chat_partner.id, @chat_partner.id, current_user.id
      ).order(:created_at)

      @chat_message = ChatMessage.new
      respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(
          "chat_box",
          partial: "chat/chat_box",
          locals: {
            chat_messages: @chat_messages,
            chat_partner: @chat_partner,
            chat_message: @chat_message,
            current_user: current_user
          }
        )
      end
      format.html # fallback for full page
    end
    else
      @chat_partner = nil
      @chat_messages = []
    end
  end


  def show
  end

  def edit
  end

  def update
    @journal.update(journals_params)
    if @journal.update(journals_params)
      redirect_to journals_path
    else
      render status: :unprocessable_entity
    end
  end

  def create
    @journal = journal.new(journal_params)
    @journal.save
  end

  def create_chat_message
  @chat_message = current_user.sent_chat_messages.build(chat_message_params)

  if @chat_message.save
    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: turbo_stream.append(
          "chat_messages",
          partial: "chat_messages/chat_message",
          locals: { chat_message: @chat_message, current_user: current_user }
        )
      }
      format.html { redirect_to journals_path(user_id: @chat_message.receiver_id) }
    end
  else
    render partial: "chat/chat_box", status: :unprocessable_entity
  end
end

private

def chat_message_params
  params.require(:chat_message).permit(:content, :receiver_id)
end

  private

  def set_journal
    @journal = Journal.find(params[:id])
  end

  def journals_params
    params.require(:journal).permit(:content)
  end
end

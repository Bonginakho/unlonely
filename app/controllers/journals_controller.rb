class JournalsController < ApplicationController
  before_action :set_journal, only: %I[show edit update]

  def index
    @journals = Journal.all
    @ordered_journals = Journal.order(:id)
    @grouped_journals = @ordered_journals.group_by(&:week)

    if params[:user_id].present?
      @chat_partner = User.find(params[:user_id])

      @chat_messages = ChatMessage.where(
        "(user_id = ? AND receiver_id = ?) OR (user_id = ? AND receiver_id = ?)",
        current_user.id, @chat_partner.id, @chat_partner.id, current_user.id
      ).order(:created_at)

      @chat_message = ChatMessage.new
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

  private

  def set_journal
    @journal = Journal.find(params[:id])
  end

  def journals_params
    params.require(:journal).permit(:content)
  end
end

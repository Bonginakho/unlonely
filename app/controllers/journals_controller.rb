class JournalsController < ApplicationController
  before_action :set_journal, only: %I[show edit update]

  def index
    @journals = Journal.all
    @ordered_journals = Journal.order(:id)
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

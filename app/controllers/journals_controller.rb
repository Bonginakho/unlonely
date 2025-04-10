class JournalsController < ApplicationController
  before_action :set_journal, only: %I[show edit update]

  def index
    @journals = Journal.all
  end

  def show
  end

  def edit
  end

  def update
    @journal.update(journals_params)
    if @journal.update(journals_params)
      render json: @journal, status: :ok
    else
      render json: @journal.errors, status: :unprocessable_entity
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

class JournalsController < ApplicationController
  before_action :set_journal, only: %I[show edit update create]

  def show
  end

  def edit
  end

  def update
    @journal.update(journals_params)
    if @journal.save!
      redirect_to journals_path(@journal)
    else
      render :new, status: :unprocessable_entity
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

class ReflectionsController < ApplicationController
  before_action :set_reflection, only: %i[edit update]
  def edit

  end

  def update
    @reflection.update(refelections_params)
    if @reflection.update
      redirect to journals_path
    else
      render status: :unprocessable_entity
    end

  end

  def set_reflection
    @reflection = Reflection.find(:params[:id])
  end

  private
  def refelections_params
    params.require(:reflection).permit(:writing)
  end
end

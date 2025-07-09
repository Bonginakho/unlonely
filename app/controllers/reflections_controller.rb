class ReflectionsController < ApplicationController
  before_action :set_reflection, only: %i[edit update]

  def edit
  end

  def update
    new_text = reflections_params[:writing]
    combined_writing = [@reflection.writing, new_text].compact.join("\n\n")

    if @reflection.update(writing: combined_writing)
      redirect_to journals_path
    else
      render status: :unprocessable_entity
    end
  end

  def set_reflection
    @reflection = Reflection.find(params[:id])
  end

  private
  def reflections_params
    params.require(:reflection).permit(:writing)
  end
end

class NotesController < ApplicationController
  before_action :set_note, only: %i[show update destroy]

  def index
    @notes = current_user.notes
    json_response(@notes)
  end

  def create
    @note = current_user.notes.create!(permitted_params)
    json_response(@note, :created)
  end

  def show
    json_response(@note)
  end

  def update
    @note.update(permitted_params)
    json_response(@note)
  end

  def destroy
    @note.destroy
    head :no_content
  end

  private

  def permitted_params
    params.permit(:title, :body)
  end

  def set_note
    @note = current_user.notes.find(params[:id])
  end
end

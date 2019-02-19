class NotesController < ApplicationController
  before_action :set_note, only: %i[show update destroy]

  def index
    @notes = Note.all
    json_response(@notes)
  end

  def create
    @note = Note.create!(permitted_params)
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
    @note = Note.find(params[:id])
  end
end

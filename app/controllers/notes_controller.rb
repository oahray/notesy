class NotesController < ApplicationController
  def create
    Note.create(permitted_params)
  end

  private

  def permitted_params
    params
  end
end

class V2::NotesController < ApplicationController
  def index
    json_response({ message: "This is version 2 of the Notesy API" })
  end
end

class NoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :body, :created_at
end

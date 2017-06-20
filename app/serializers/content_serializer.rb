class ContentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :link_url, :pic_url, :difficulty, :created_at, :updated_at
  belongs_to :subtopic
end

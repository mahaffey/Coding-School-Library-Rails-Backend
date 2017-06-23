class ContentSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description, :difficulty, :link_url, :pic_url, :created_at, :updated_at 

  belongs_to :subtopic
end

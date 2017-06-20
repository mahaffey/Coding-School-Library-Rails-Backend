class ContentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :link_url, :pic_url, :difficulty
  belongs_to :subtopic
end

class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :pic_url, :created_at, :updated_at
  has_many :subtopics
end

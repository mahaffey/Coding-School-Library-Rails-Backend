class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :pic_url
  has_many :subtopics
end

class SubtopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :pic_url
  belongs_to :topic
  has_many :contents
end

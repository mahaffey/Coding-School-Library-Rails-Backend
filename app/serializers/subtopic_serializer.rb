class SubtopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :pic_url, :created_at, :updated_at
  belongs_to :topic
  has_many :contents
end

class JobSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :position, :company, :created_at, :updated_at
  has_many :actions
end

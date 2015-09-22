class JobSerializer < ActiveModel::Serializer
  attributes :id, :position, :company, :created_at, :updated_at, :actions

  embed :ids, include: true

end

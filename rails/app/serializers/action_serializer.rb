class ActionSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :title, :body, :state, :created_at, :updated_at, :job_id
end

class StorageSerializer < ActiveModel::Serializer
  attributes :key, :value, :created_at
  root false
end

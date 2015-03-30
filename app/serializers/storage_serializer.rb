class StorageSerializer < ActiveModel::Serializer
  attributes :data, :type, :created_at

  def created_at
    Time.at(Random.rand(1427622277)).utc.iso8601
  end
end

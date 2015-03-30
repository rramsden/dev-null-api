class Storage
  include ActiveModel::Model
  include ActiveModel::SerializerSupport

  TYPES = [
    "image",
    "video",
    "audio",
  ]

  attr_accessor :data, :type

  def self.find(id)
    key = Key.new(id)

    if key.very_interesting?
      new(data: storage[fit(id, storage)], type: TYPES[fit(id, TYPES)])
    else
      false
    end
  end

  private

  def self.storage
    ObjectSpace.each_object(String).collect { |i| i }
  end

  def self.fit(id, array)
    id.to_s.split(//).map(&:ord).sum % array.length
  end
end

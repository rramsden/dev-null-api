class Trash
  include ActiveModel::Model
  include ActiveModel::SerializerSupport

  def self.all
    rand(10).times.collect { |n| im_feeling_lucky }
  end

  def self.im_feeling_lucky
    ObjectSpace.each_object(String).collect { |i| i }.sample
  end
end

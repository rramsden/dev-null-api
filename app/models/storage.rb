class Storage < ActiveRecord::Base
  def self.storage
    ObjectSpace.each_object(String).collect { |i| i }
  end
end

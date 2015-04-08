class Trash
  def self.all
    {trash: rand(20).times.collect { |n| im_feeling_lucky }}
  end

  def self.im_feeling_lucky
    ObjectSpace.each_object(String).collect { |i| i }.sample
  end
end

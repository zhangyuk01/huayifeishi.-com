class Apple
  attr_accessor :color
  @color="green" 
  def color
    return @color
  end

  def color=(color)
    @color = color
  end

  def self.color
    return @color
  end
  
end

apple = Apple.new
apple.color = 'red'

puts apple.color

puts Apple.color


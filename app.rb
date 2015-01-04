
class Apple

  @color =''

  def color
    return @color
  end

  def color=(new_color)
    @color = new_color
  end
end

apple1 = Apple.new

# attribute, method
puts apple1.color
apple1.color= 'green'
puts apple1.color

apple2 = Apple.new
apple2.color="red"
puts apple2.color

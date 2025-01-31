```ruby
class MyClass
  def initialize(value)
    raise TypeError, "Value must be a number" unless value.is_a?(Numeric)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    raise TypeError, "Value must be a number" unless new_value.is_a?(Numeric)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10

my_object.value = 20
puts my_object.value  # Output: 20

begin
  my_object.value = "hello"
  puts my_object.value
rescue TypeError => e
  puts e.message # Output: Value must be a number
end
```
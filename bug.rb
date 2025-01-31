```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10

my_object.value = 20
puts my_object.value  # Output: 20

#This is the buggy part
my_object.value = "hello"
puts my_object.value # Output: "hello"

#The bug is that the value variable can hold any data type, not just numbers
```
require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }


#this all bascially demonstrates how .collect works -- frustrating complex for such a simple enumerator
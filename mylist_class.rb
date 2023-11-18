require_relative 'enum_module'

class MyList
  include Enumerable

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)
# <MyList: @list=[1, 2, 3, 4]>

# Test #all?
puts "all?: #{list.all? { |e| e < 5 }}" # true
puts "all?: #{list.all? { |e| e > 5 }}" # false

# Test #any?
puts "any?: #{list.any? { |e| e == 2 }}" # true
puts "any?: #{list.any? { |e| e == 5 }}" # false

# Test #filter
puts "filter: #{list.filter(&:even?)}" # [2, 4]

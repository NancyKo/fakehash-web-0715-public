require 'pry'
class FakeHashWrapper
  # write code here
attr_accessor :args

  def initialize(*args)
    @args = {}
  end

  def [](key)
    key = key.to_s unless key.class == String
    @args[key] 
  end 

  def []=(key, value)
    key = key.to_s unless key.class == String
    @args[key] = value
  end

  def keys
    sorted_keys = []
    @args.keys.sort
    @args.each do |key|
      # binding.pry
      sorted_keys << key[0].to_sym
    end
    sorted_keys.sort { |a, b| b <=> a }
  end

  def first_letter(letter)
    matching_keys = []
    @args.each do |key, value|
      matching_keys << value if key[0] == letter 
    end
    matching_keys
  end

  def each 
    i = 0
    while i < @args.length
      puts @args.values[i]
      i += 1
    end
  end
end
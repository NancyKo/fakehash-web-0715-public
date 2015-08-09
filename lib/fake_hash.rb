require 'pry'
class FakeHashWrapper
  # write code here
attr_accessor :args

  def initialize(*args)
    @args = args
  end

  def [](key)

    @args[0].each_pair { |key, value| return value }
  end 

  def []=(key, value)
    @args << {key => value}
  end

end
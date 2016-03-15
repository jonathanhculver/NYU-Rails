class Calculator
  attr_accessor :result
  INITIAL_VALUE = 0
  @@count = INITIAL_VALUE

  def initialize
    @result = 0
  end

  def add(first_num, second_num)
    @@count += 1
    @result = first_num + second_num
  end

  def subtract(first_num, second_num)
    @result = first_num - second_num
  end

  def self.getCount
    @@count
  end
end

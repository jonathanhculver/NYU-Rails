class Calculator
  attr_accessor :result

  def add(first_num, second_num)
    @result = first_num + second_num
  end

  def subtract(first_num, second_num)
    @result = first_num - second_num
  end
end

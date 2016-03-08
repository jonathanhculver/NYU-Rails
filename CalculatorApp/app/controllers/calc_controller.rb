class CalcController < ApplicationController
  def index
  end

  def add
  end

  def subtract
  end

  def multiply
  end

  def divide
  end

  def doadd
    ok = true
    if calc_params[:firstNum].blank?
      flash.now[:noticeOne] = "The first number is required."
      ok = false
    end
    if calc_params[:secondNum].blank?
      flash.now[:noticeTwo] = "The second number is required."
      ok = false
    end
    if ok
      first_num = calc_params[:firstNum].to_i
      second_num = calc_params[:secondNum].to_i
      @result = first_num + second_num
    else
      render "add"
    end
  end

  private
    # only allow these params
    def calc_params
      params.permit(:firstNum, :secondNum)
    end
end

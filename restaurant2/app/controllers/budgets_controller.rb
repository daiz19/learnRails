class BudgetsController < ApplicationController
  def top
  end

  def result
    people = params[:people].to_i
    price = params[:price].to_i
    @budget = Budget.new(people, price)
  end
end

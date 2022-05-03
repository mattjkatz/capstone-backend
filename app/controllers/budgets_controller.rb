class BudgetsController < ApplicationController

  def index
    budgets = Budget.all
    render json: budgets
  end

  def show 
    budget = Budget.find(params[:id])
    render json: budget
  end

  def create
    budget = Budget.new(
      user_id: params[:user_id],
      name: params[:name]
    )
    budget.save
    render json: budget
  end

  def update
    budget = Budget.find(params[:id])
    budget.user_id = params[:user_id] || budget.user_id
    budget.name = params[:name] || budget.name
    budget.save
    render json: budget
  end

  def destroy
    budget = Budget.find(params[:id])
    budget.delete
    render json: {message: "Successfully deleted! Nice!"}
  end

end

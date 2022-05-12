class BudgetsController < ApplicationController
  before_action :authenticate_user

  def index
    budgets = current_user.budgets
    render json: budgets
  end

  def show 
    budget = current_user.budgets.where(id: params[:id])
    render json: budget
  end

  def create
    budget = Budget.new(
      user_id: current_user.id,
      name: params[:name],
    )
    if current_user.budgets.length < 1
      budget.real = true
    else
      budget.real = false
    end
    if budget.save
      render json: budget
    else
      render json: { errors: budget.errors.full_messages }, status: :bad_request
    end
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

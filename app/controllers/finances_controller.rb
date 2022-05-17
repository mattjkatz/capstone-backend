class FinancesController < ApplicationController

  def index
    finances = Finance.all
    render json: finances
  end

  def show 
    finance = Finance.find(params[:id])
    render json: finance
  end

  def create
    finance = Finance.new(
      budget_id: current_user.budgets[0].id,
      name: params[:name],
      amount: params[:amount],
      category: params[:category],
      frequency: params[:frequency],
      tracking: params[:tracking],
      taxes: params[:taxes],
      transaction_type: params[:transaction_type],
    )
    if finance.save
      render json: finance
    else
      render json: { errors: finance.errors.full_messages }, status: :bad_request
    end
  end

  def update
    finance = Finance.find(params[:id])
    finance.budget_id = params[:budget_id] || finance.budget_id
    finance.name = params[:name] || finance.name
    finance.amount = params[:amount] || finance.amount
    finance.category = params[:category] || finance.category
    finance.frequency = params[:frequency] || finance.frequency
    finance.tracking = params[:tracking] || finance.tracking
    finance.taxes = params[:taxes] || finance.taxes
    finance.save
    render json: finance
  end

  def destroy
    finance = Finance.find(params[:id])
    finance.delete
    render json: {message: "Successfully deleted! Nice!"}
  end

end

class PurchasesController < ApplicationController

  def index
    purchases = Purchase.all
    render json: purchases
  end

  def show 
    purchase = Purchase.find(params[:id])
    render json: purchase
  end

  def create
    purchase = Purchase.new(
      finance_id: params[:finance_id],
      name: params[:name],
      price: params[:price],
      category: params[:category],
      frequency: params[:frequency]
    )
    if purchase.save
      render json: purchase
    else
      render json: { errors: purchase.errors.full_messages }, status: :bad_request
    end
  end

  def update
    purchase = Purchase.find(params[:id])
    purchase.finance_id = params[:finance_id] || purchase.finance_id
    purchase.name = params[:name] || purchase.name
    purchase.price = params[:price] || purchase.price
    purchase.category = params[:category] || purchase.category
    purchase.frequency = params[:frequency] || purchase.frequency
    purchase.save
    render json: purchase
  end

  def destroy
    purchase = Purchase.find(params[:id])
    purchase.delete
    render json: {message: "Successfully deleted! Nice!"}
  end

end

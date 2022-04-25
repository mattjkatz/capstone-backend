class PurchasesController < ApplicationController

  def index
    purchases = Purchase.all
    render json: purchases.as_json
  end

  def show 
    purchase = Purchase.find(params[:id])
    render json: purchase.as_json
  end

  def create
    purchase = Purchase.new(
      finance_id: params[:finance_id],
      name: params[:name],
      price: params[:price],
      category: params[:category],
      frequency: params[:frequency]
    )
    purchase.save
    render json: purchase.as_json
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

class MerchantsController < ApplicationController
  def index
    @merchants = Merchant.all
  end

  def show
    @merchant = Merchant.find(params[:id])
  end

  def new
    # @merchant = Merchant.new
  end


  def destroy
    @merchant = Merchant.find(params[:id])

    @merchant.destroy
    redirect_to "/merchants"
  end

  def edit
    @merchant = Merchant.find(params[:id])
  end

  def update
    @merchant = Merchant.find(params[:id])

    @merchant.update(merchant_params)
    redirect_to "/merchants/#{@merchant.id}"
  end

  def create
    merchant = Merchant.create!(merchant_params)
    redirect_to "/merchants"
  end

  # def item_index
  #   @merchant = Merchant.find(params[:id])
  #   @merchant.items
  # end

  private
  def merchant_params
    params.permit(:name, :address, :city, :state, :zip)
  end

end

class MerchantsController < ApplicationController
  def index
    @merchants = Merchant.all
  end

  def show
    # binding.pry
    @merchant = Merchant.find(params[:id])
  end
end

class MerchantsController < ApplicationController
  def index
    facade = MerchantFacade.new
    @merchants = facade.merchants
  end

  def show
    facade = MerchantFacade.new
    @merchant = facade.merchant(params[:id])
    @items = facade.merchant_items(params[:id])
  end
end

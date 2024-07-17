class MerchantsController < ApplicationController
  def index
    facade = MerchantFacade.new
    @merchants = facade.merchants
  end
end

class ItemsController < ApplicationController
  def index
    @items = ItemFacade.new.all_items
  end

  def show
    @item = ItemFacade.new.find_item(params[:id])
  end
end

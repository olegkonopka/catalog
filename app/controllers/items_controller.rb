class ItemsController < ApplicationController
  def index
    if params[:query]
      @items = Item.text_search(params[:query])
    else
      @items = Item.all
    end
  end
end

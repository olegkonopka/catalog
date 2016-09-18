class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    @item_rating = ItemRating.find_by(item_id: @item.id)
  end
  def index
    if params[:query]
      @items = Item.text_search(params[:query])
    else
      @items = Item.all
    end
  end
end

class ItemRatingsController < ApplicationController
  def update
    @item_rating = ItemRating.find(params[:id])
    @item_rating.update_attributes(item_rating_params)
    redirect_to items_path
  end

  private
    def item_rating_params
      params.require(:item_rating).permit(:rating)
    end
end

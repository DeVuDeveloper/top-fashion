class FavouritesController < ApplicationController
  before_action :check_if_logged_in

  def create
    # @product = Product.find params[:product_id]
    favourite = Favourite.create( product_id: params[:product_id], user_id:@current_user.id)
    redirect_to product_path(params[:product_id])
  end

  def destroy
    @product = Product.find params[:id]
    favourite = Favourite.find_by(user_id: @current_user.id, product_id: @product.id)
    favourite.destroy
    redirect_to root_path
  end
end

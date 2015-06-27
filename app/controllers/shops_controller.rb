class ShopsController < ApplicationController
  def index
    @shop = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.save
    redirect_to @shop
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    shop.update(shop_params)
    redirect_to @shop
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to @shop
  end

private

 def shop_params
  params.require(:shop).permit(
    :shop_name,
    :tel,
    :address,
    :url,
    )
end

end


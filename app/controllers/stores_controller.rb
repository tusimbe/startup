class StoresController < ApplicationController
  def index
    @stores = Store.all
    @cart = current_cart
  end

  def show
    @store = Store.find(params[:id])
    @products = @store.products
    @cart = current_cart
  end
end

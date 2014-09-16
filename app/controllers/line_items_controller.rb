class LineItemsController < ApplicationController
  def create
    @cart = current_cart
    product = Product.find(params[:product])
    @line_item = @cart.add_product(product)

    respond_to do |format|
      if @line_item.save
        format.html {}
        format.js   { @current_item = @line_item }
      else
        format.html {}
        format.js   {}
      end
    end
  end
end

class LineItemsController < ApplicationController
  def create
    @cart = current_cart
    product = Product.find(params[:product])
    @line_item = @cart.add_product(product)

    respond_to do |format|
      if @line_item.save
        format.html {}
        format.js   {}
      else
        format.html {}
        format.js   {}
      end
    end
  end

  def update
    @cart = current_cart
    @line_item = @cart.line_items.find(params[:id])
    oper = params[:oper]

    if oper == "plus"
      @line_item.quantity += 1
      @line_item.save
    elsif oper == "minus"
      if @line_item.quantity == 1
        @line_item.destroy
      else
        @line_item.quantity -= 1
        @line_item.save
      end
    else
      # do noting
    end

    respond_to do |format|
      format.html {}
      format.js   {}
    end
  end

  def destroy
    @cart = current_cart

    @line_item = @cart.line_items.find(params[:id])
    @line_item.destroy

    respond_to do |format|
      format.html {}
      format.js   {}
    end
  end
end

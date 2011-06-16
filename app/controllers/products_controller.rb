class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      render :text => "Ok!"
    else
      flash[:error] = @product.errors
      redirect_to :action => "new"
    end
  end

end

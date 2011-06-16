class ProductsController < ApplicationController

  def show
    @product = Product.find_by_alias(params[:alias])
    render :text => "OK"
  end

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

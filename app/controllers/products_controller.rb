class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.flavor_id = params[:flavor_id]
    @product.brand_id = params[:brand_id]
    @product.delivery_id = params[:delivery_id]
    @product.name = params[:name]
    @product.image = params[:image]

    if @product.save
      redirect_to "/products", :notice => "Product created successfully."
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.flavor_id = params[:flavor_id]
    @product.brand_id = params[:brand_id]
    @product.delivery_id = params[:delivery_id]
    @product.name = params[:name]
    @product.image = params[:image]

    if @product.save
      redirect_to "/products", :notice => "Product updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    redirect_to "/products", :notice => "Product deleted."
  end
end

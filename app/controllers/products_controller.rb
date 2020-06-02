class ProductsController < ApplicationController

  def landing
    @newest_3 = Product.newest_3
    @from_mexico = Product.from_mexico
    render :landing
  end

  def index
    @products = Product.all
    render :index
  end

  def new
    @product = Product.new
    render:new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product Successfully Added to Inventory"
      redirect_to products_path
    else
      flash[:notice] = "Product Not Added, All data must be entered in the form correctly."
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:name, :cost, :country_of_origin)
    end

end
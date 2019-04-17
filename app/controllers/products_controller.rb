class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /merch
  def index
    @products = Product.all
  end

  # GET /merch/1
  def show
  end

  # GET /merch/new
  def new
    @product = Product.new
  end

  # GET /merch/1/edit  
  def edit
  end

  # POST /merch
  def create
    @product = Product.new(product_params)
    puts @product

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # POST /merch/1
  def update 
    respond_to do |format|
      if @product.update(product_params) 
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /merch/1
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully deleted.' }
    end
  end


  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description, :link)
    end
end

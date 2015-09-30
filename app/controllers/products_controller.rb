class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.includes(:category).order("id asc").page( params[:page]).per(10)
  end

  def show
  end

  def new
    @category = Category.find(params[:category_id])
    @product = Product.new
  end

  def edit
    @category = Category.find(params[:category_id])
  end

  def create
    @product = Product.create(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to [@product.category, @product], notice: 'Product was successfully created.' } #format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new } # format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        p @product
        format.html { redirect_to [@product.category, @product], notice: 'Product was successfully updated.' } #format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit } #format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_product
      @product = Category.find(params[:category_id]).products.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:product_name, :unit_price, :quantity, :isbn, :desc, :category_id,:avatar)
    end
end

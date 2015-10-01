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
      if @product.save
        redirect_to [@product.category, @product], notice: 'Product was successfully created.'
      else
         redirect_to new_category_product_path
      end
  end

  def update
      if @product.update(product_params)
        format.html { redirect_to [@product.category, @product], notice: 'Product was successfully updated.' } #format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit } #format.json { render json: @product.errors, status: :unprocessable_entity }
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

class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_param)

    if @product.save
      redirect_to products_path, notice: "El producto fue creado con exito " and return
    else
      render :new, notice: "Fail!!!"
    end

  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])

    if product.update_attributes(product_param)
      redirect_to products_path, notice: "Producto Actualizado"
    else
      render :edit, notice: "FAIL!!!"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice: "El producto ha sido eliminado!" and return
  end

  private
  def product_param
    params.require(:product).permit(:sku, :nombre, :precio)
  end
end

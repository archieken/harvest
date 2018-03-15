class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index

    @products = policy_scope(Product)
    authorize @products

    @vegetables = @products.where(category: Category.find_by(name: "vegetables"))
    authorize @vegetables
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end
end

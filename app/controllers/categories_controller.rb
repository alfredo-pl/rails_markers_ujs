class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show edit update destroy ]
  
  # GET /categories or /categories.json
  def index
    @categories = Category.all
    @category = Category.new
    @categories_ids = Category.all.map{ |category| [category.name, category.id]}
    @types = Type.all.map{ |type| [type.name, type.id]}
  end

  # GET /categories/1 or /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
   
  end

  # GET /categories/1/edit
  def edit
    @categories_ids = Category.all.map{ |category| [category.name, category.id]}
    @types = Type.all.map{ |type| [type.name, type.id]}
  end

  # category /categories or /categories.json
  def create
    @category = Category.new(category_params)

   unless @category.save
    render json: @category.errors, status: :unprocessable_entity
   end
    
  end
  def data_categories
    @categories = Category.build_data
    render json: @categories
  end
  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    @category.update(category_params)
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :public, :category_id, :type_id)
    end

end

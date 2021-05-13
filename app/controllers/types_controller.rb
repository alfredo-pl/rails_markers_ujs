class TypesController < ApplicationController
  before_action :set_type, only: %i[ show edit update destroy ]
  
  def index
    @types = Type.all
    @type = Type.new
  end

  def show
  end

  # GET /posts/new
  def new
    @type = Type.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @type = Type.new(type_params)

   unless @type.save
    render json: @type.errors, status: :unprocessable_entity
   end
    
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    @type.update(type_params)
  end

  def destroy
    @type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type
      @type = Type.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_params
      params.require(:type).permit( :name)
    end
end

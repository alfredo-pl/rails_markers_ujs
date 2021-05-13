class MarkersController < ApplicationController
  before_action :set_marker, only: %i[ show edit update destroy ]
  
  # GET /markers or /markers.json
  def index
    @markers = Marker.all
    @marker = Marker.new
    @categories = Category.all.map{ |category| [category.name, category.id]}
  end

  # GET /markers/1 or /markers/1.json
  def show
  end

  # GET /markers/new
  def new
    @marker = Marker.new
    @categories = Category.all.map{ |category| [category.name, category.id]}
  end

  # GET /markers/1/edit
  def edit
    @categories = Category.all.map{ |category| [category.name, category.id]}
  end

  # marker /markers or /markers.json
  def create
    @marker = Marker.new(marker_params)

   unless @marker.save
    render json: @marker.errors, status: :unprocessable_entity
   end
    
  end

  # PATCH/PUT /markers/1 or /markers/1.json
  def update
    @marker.update(marker_params)
  end

  # DELETE /markers/1 or /markers/1.json
  def destroy
    @marker.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marker
      @marker = Marker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marker_params
      params.require(:marker).permit(:name,:url,:category_id)
    end

end

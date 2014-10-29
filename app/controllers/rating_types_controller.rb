class RatingTypesController < ApplicationController
  before_action :set_rating_type, only: [:show, :edit, :update, :destroy]

  # GET /rating_types
  # GET /rating_types.json
  def index
    @rating_types = RatingType.all
  end

  # GET /rating_types/1
  # GET /rating_types/1.json
  def show
  end

  # GET /rating_types/new
  def new
    @rating_type = RatingType.new
  end

  # GET /rating_types/1/edit
  def edit
  end

  # POST /rating_types
  # POST /rating_types.json
  def create
    @rating_type = RatingType.new(rating_type_params)

    respond_to do |format|
      if @rating_type.save
        format.html { redirect_to @rating_type, notice: 'Rating type was successfully created.' }
        format.json { render :show, status: :created, location: @rating_type }
      else
        format.html { render :new }
        format.json { render json: @rating_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rating_types/1
  # PATCH/PUT /rating_types/1.json
  def update
    respond_to do |format|
      if @rating_type.update(rating_type_params)
        format.html { redirect_to @rating_type, notice: 'Rating type was successfully updated.' }
        format.json { render :show, status: :ok, location: @rating_type }
      else
        format.html { render :edit }
        format.json { render json: @rating_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rating_types/1
  # DELETE /rating_types/1.json
  def destroy
    @rating_type.destroy
    respond_to do |format|
      format.html { redirect_to rating_types_url, notice: 'Rating type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating_type
      @rating_type = RatingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rating_type_params
      params.require(:rating_type).permit(:name, :rate_id)
    end
end

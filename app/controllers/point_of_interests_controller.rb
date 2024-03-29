class PointOfInterestsController < ApplicationController
  before_action :set_point_of_interest, only: %i[ show edit update destroy comments]

  # GET /point_of_interests or /point_of_interests.json
  def index
    @point_of_interests = PointOfInterest.all
  end

  # GET /point_of_interests/1 or /point_of_interests/1.json
  def show
  end

  def comments
    @comments = @poi.commontator_thread.comments
    render partial: 'comments', locals: { poi: @poi }
  end

  # GET /point_of_interests/new
  def new
    @point_of_interest = PointOfInterest.new
  end

  # GET /point_of_interests/1/edit
  def edit
  end

  # POST /point_of_interests or /point_of_interests.json
  def create
    @point_of_interest = PointOfInterest.new(point_of_interest_params)

    respond_to do |format|
      if @point_of_interest.save
        format.html { redirect_to point_of_interest_url(@point_of_interest), notice: "Point of interest was successfully created." }
        format.json { render :show, status: :created, location: @point_of_interest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @point_of_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /point_of_interests/1 or /point_of_interests/1.json
  def update
    respond_to do |format|
      if @point_of_interest.update(point_of_interest_params)
        format.html { redirect_to point_of_interest_url(@point_of_interest), notice: "Point of interest was successfully updated." }
        format.json { render :show, status: :ok, location: @point_of_interest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @point_of_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /point_of_interests/1 or /point_of_interests/1.json
  def destroy
    @point_of_interest.destroy

    respond_to do |format|
      format.html { redirect_to point_of_interests_url, notice: "Point of interest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_of_interest
      @point_of_interest = PointOfInterest.find(params[:id])
      @poi = @point_of_interest
    end

    # Only allow a list of trusted parameters through.
    def point_of_interest_params
      params.require(:point_of_interest).permit(:title, :description, :latitude, :longitude)
    end
end

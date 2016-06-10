class CollegeLevelsController < ApplicationController
  #before_action :set_college_level
  before_action :authenticate_admin!, except: [:index, :show]

  # GET /college_levels
  # GET /college_levels.json
  def index
    @college_levels = CollegeLevel.all

  end

  # GET /college_levels/1
  # GET /college_levels/1.json
  def show
    @college_level = CollegeLevel.find(params[:id])
  end

  # GET /college_levels/new
  def new
    @college_level = CollegeLevel.new
  end

  # GET /college_levels/1/edit
  def edit
  end

  # POST /college_levels
  # POST /college_levels.json
  def create
    @college_level = CollegeLevel.new(college_level_params)

    respond_to do |format|
      if @college_level.save
        format.html { redirect_to @college_level, notice: 'College level was successfully created.' }
        format.json { render :show, status: :created, location: @college_level }
      else
        format.html { render :new }
        format.json { render json: @college_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /college_levels/1
  # PATCH/PUT /college_levels/1.json
  def update
    respond_to do |format|
      if @college_level.update(college_level_params)
        format.html { redirect_to @college_level, notice: 'College level was successfully updated.' }
        format.json { render :show, status: :ok, location: @college_level }
      else
        format.html { render :edit }
        format.json { render json: @college_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_levels/1
  # DELETE /college_levels/1.json
  def destroy
    @college_level = CollegeLevel.find(params[:id])
    @college_level.destroy
    respond_to do |format|
      format.html { redirect_to college_levels_url, notice: 'College level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_college_level
      @college_level = CollegeLevel.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def college_level_params
      params.require(:college_level).permit(:id, :college_level_name)
    end
end

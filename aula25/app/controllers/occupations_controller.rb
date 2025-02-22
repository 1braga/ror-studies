class OccupationsController < ApplicationController
  before_action :set_occupation, only: %i[ show edit update destroy ]

  # GET /occupations or /occupations.json
  def index
    @occupations = Occupation.all
  end

  # GET /occupations/1 or /occupations/1.json
  def show
  end

  # GET /occupations/new
  def new
    @occupation = Occupation.new
  end

  # GET /occupations/1/edit
  def edit
  end

  # POST /occupations or /occupations.json
  def create
    @occupation = Occupation.new(occupation_params)

    respond_to do |format|
      if @occupation.save
        format.html { redirect_to @occupation, notice: "Occupation was successfully created." }
        format.json { render :show, status: :created, location: @occupation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @occupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occupations/1 or /occupations/1.json
  def update
    respond_to do |format|
      if @occupation.update(occupation_params)
        format.html { redirect_to @occupation, notice: "Occupation was successfully updated." }
        format.json { render :show, status: :ok, location: @occupation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @occupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occupations/1 or /occupations/1.json
  def destroy
    @occupation.destroy!

    respond_to do |format|
      format.html { redirect_to occupations_path, status: :see_other, notice: "Occupation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occupation
      @occupation = Occupation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def occupation_params
      params.expect(occupation: [ :description ])
    end
end

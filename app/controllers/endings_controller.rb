class EndingsController < ApplicationController
  before_action :set_ending, only: [:show, :edit, :update, :destroy]

  # GET /endings
  # GET /endings.json
  def index
    @endings = Ending.all
  end

  # GET /endings/1
  # GET /endings/1.json
  def show
  end

  # GET /endings/new
  def new
    @ending = Ending.new
  end

  # GET /endings/1/edit
  def edit
  end

  # POST /endings
  # POST /endings.json
  def create
    @ending = Ending.new(ending_params)

    respond_to do |format|
      if @ending.save
        format.html { redirect_to @ending, notice: 'Ending was successfully created.' }
        format.json { render :show, status: :created, location: @ending }
      else
        format.html { render :new }
        format.json { render json: @ending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endings/1
  # PATCH/PUT /endings/1.json
  def update
    respond_to do |format|
      if @ending.update(ending_params)
        format.html { redirect_to @ending, notice: 'Ending was successfully updated.' }
        format.json { render :show, status: :ok, location: @ending }
      else
        format.html { render :edit }
        format.json { render json: @ending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endings/1
  # DELETE /endings/1.json
  def destroy
    @ending.destroy
    respond_to do |format|
      format.html { redirect_to endings_url, notice: 'Ending was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ending
      @ending = Ending.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ending_params
      params.require(:ending).permit(:ano, :semestre, :student_id)
    end
end

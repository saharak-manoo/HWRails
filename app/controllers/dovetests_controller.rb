class DovetestsController < ApplicationController
  before_action :set_dovetest, only: [:show, :edit, :update, :destroy]

  # GET /dovetests
  # GET /dovetests.json
  def index
    @dovetests = Dovetest.all
  end

  # GET /dovetests/1
  # GET /dovetests/1.json
  def show
  end

  # GET /dovetests/new
  def new
    @dovetest = Dovetest.new
  end

  # GET /dovetests/1/edit
  def edit
  end

  # POST /dovetests
  # POST /dovetests.json
  def create
    @dovetest = Dovetest.new(dovetest_params)

    respond_to do |format|
      if @dovetest.save
        format.html { redirect_to @dovetest, notice: 'Dovetest was successfully created.' }
        format.json { render :show, status: :created, location: @dovetest }
      else
        format.html { render :new }
        format.json { render json: @dovetest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dovetests/1
  # PATCH/PUT /dovetests/1.json
  def update
    respond_to do |format|
      if @dovetest.update(dovetest_params)
        format.html { redirect_to @dovetest, notice: 'Dovetest was successfully updated.' }
        format.json { render :show, status: :ok, location: @dovetest }
      else
        format.html { render :edit }
        format.json { render json: @dovetest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dovetests/1
  # DELETE /dovetests/1.json
  def destroy
    @dovetest.destroy
    respond_to do |format|
      format.html { redirect_to dovetests_url, notice: 'Dovetest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dovetest
      @dovetest = Dovetest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dovetest_params
      params.require(:dovetest).permit(:name, :email, :login)
    end
end

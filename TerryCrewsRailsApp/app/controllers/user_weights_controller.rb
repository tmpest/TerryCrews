class UserWeightsController < ApplicationController
  before_action :set_user_weight, only: [:show, :edit, :update, :destroy]

  # GET /user_weights
  # GET /user_weights.json
  def index
    @user_weights = UserWeight.all
  end

  # GET /user_weights/1
  # GET /user_weights/1.json
  def show
  end

  # GET /user_weights/new
  def new
    @user_weight = UserWeight.new
  end

  # GET /user_weights/1/edit
  def edit
  end

  # POST /user_weights
  # POST /user_weights.json
  def create
    @user_weight = UserWeight.new(user_weight_params)

    respond_to do |format|
      if @user_weight.save
        format.html { redirect_to @user_weight, notice: 'User weight was successfully created.' }
        format.json { render :show, status: :created, location: @user_weight }
      else
        format.html { render :new }
        format.json { render json: @user_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_weights/1
  # PATCH/PUT /user_weights/1.json
  def update
    respond_to do |format|
      if @user_weight.update(user_weight_params)
        format.html { redirect_to @user_weight, notice: 'User weight was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_weight }
      else
        format.html { render :edit }
        format.json { render json: @user_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_weights/1
  # DELETE /user_weights/1.json
  def destroy
    @user_weight.destroy
    respond_to do |format|
      format.html { redirect_to user_weights_url, notice: 'User weight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_weight
      @user_weight = UserWeight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_weight_params
      params.require(:user_weight).permit(:weight)
    end
end

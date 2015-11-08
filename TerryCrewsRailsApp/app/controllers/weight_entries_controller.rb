class WeightEntriesController < ApplicationController
  before_action :set_weight_entry, only: [:show, :edit, :update, :destroy]

  # GET /weight_entries
  # GET /weight_entries.json
  def index
    @weight_entries = WeightEntry.all
  end

  # GET /weight_entries/1
  # GET /weight_entries/1.json
  def show
  end

  # GET /weight_entries/new
  def new
    @weight_entry = WeightEntry.new
  end

  # GET /weight_entries/1/edit
  def edit
  end

  # POST /weight_entries
  # POST /weight_entries.json
  def create
    @weight_entry = WeightEntry.new(weight_entry_params)

    respond_to do |format|
      if @weight_entry.save
        format.html { redirect_to @weight_entry, notice: 'Weight entry was successfully created.' }
        format.json { render :show, status: :created, location: @weight_entry }
      else
        format.html { render :new }
        format.json { render json: @weight_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weight_entries/1
  # PATCH/PUT /weight_entries/1.json
  def update
    respond_to do |format|
      if @weight_entry.update(weight_entry_params)
        format.html { redirect_to @weight_entry, notice: 'Weight entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @weight_entry }
      else
        format.html { render :edit }
        format.json { render json: @weight_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_entries/1
  # DELETE /weight_entries/1.json
  def destroy
    @weight_entry.destroy
    respond_to do |format|
      format.html { redirect_to weight_entries_url, notice: 'Weight entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_entry
      @weight_entry = WeightEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_entry_params
      params.require(:weight_entry).permit(:weight)
    end
end

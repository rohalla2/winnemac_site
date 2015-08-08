class UnitsController < ApplicationController
  before_action :set_unit, only: [:show, :edit, :update]
  before_action :authorize, only: [:edit, :update]

  # GET /units
  def index
    if @user.nil?
      @units = Unit.where(available:true).order(:id)
    else
      @units = Unit.all.order(:id)
    end
  end

  # GET /units/1
  def show
    redirect_to units_url, notice: 'Unit not available' unless @unit.available || @user
  end

  # PATCH/PUT /units/1
  def update
    if @unit.update(unit_params)
      redirect_to @unit, notice: 'Unit was successfully updated.'
    else
      render action: 'edit'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit
      @unit = Unit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_params
      params.require(:unit).permit(:title, :price, :available, :description)
    end
end

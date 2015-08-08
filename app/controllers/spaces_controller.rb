class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update]
  before_action :authorize, only: [:edit, :update]

  # GET /spaces
  def index
    if @user.nil?
      @spaces = Space.where(available:true)
    else
      @spaces = Space.all
    end
  end

  # GET /spaces/1
  def show
    redirect_to spaces_url, notice: 'Space not available' unless @space.available || @user
  end

  # PATCH/PUT /spaces/1
  def update
      if @space.update(space_params)
        redirect_to @space, notice: 'Space was successfully updated.'
      else
        render action: 'edit'
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_space
      @space = Space.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def space_params
      params.require(:space).permit(:title, :name, :description, :image_url, :price, :available)
    end
end

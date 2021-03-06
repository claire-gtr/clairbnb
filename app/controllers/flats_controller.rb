class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = policy_scope(Flat).order(created_at: :desc)
  end

  def show
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = current_user.flats.build(flat_params)
    authorize @flat
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to root_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def flat_params
    params.require(:flat).permit(:title, :description, :photo, :address)
  end
end

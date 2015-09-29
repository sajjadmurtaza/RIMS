class SponsorsController < ApplicationController
  before_action :set_sponsor, only: [:show, :edit, :update, :destroy]

  def index
    @sponsors = Sponsor.all
  end

  def show
  end

  def new
    @sponsor = Sponsor.new
  end

  def edit
  end

  def create
    @sponsor = Sponsor.new(sponsor_params)
    @sponsor.save
    redirect_to sponsors_path
  end

  def update
    @sponsor.update(sponsor_params)
    redirect_to sponsors_path
  end

  def destroy
    @sponsor.destroy
    redirect_to sponsors_path
  end

  private
    def set_sponsor
      @sponsor = Sponsor.find(params[:id])
    end

    def sponsor_params
      params.require(:sponsor).permit(:title, :url, :description, :avatar, :avatar_file_name, :retired, :slider_sponsor)
    end
end

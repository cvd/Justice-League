class HeroesController < ApplicationController
  before_action :set_hero, only: [:show, :edit, :update, :destroy]
  protect_from_forgery only: []

  # GET /heroes.json
  def index
    @heroes = Hero.all
  end

  # GET /heroes/1.json
  def show
  end


  # POST /heroes.json
  def create
    @hero = Hero.new(hero_params)

    respond_to do |format|
      if @hero.save
        format.json { render action: 'show', status: :created, location: @hero }
      else
        format.json { render json: @hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heroes/1.json
  def update
    respond_to do |format|
      if @hero.update(hero_params)
        format.json { head :no_content }
      else
        format.json { render json: @hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heroes/1.json
  def destroy
    @hero.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hero
      @hero = Hero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hero_params
      params.require(:hero).permit(:name, :secret_identity, :abilities)
    end
end

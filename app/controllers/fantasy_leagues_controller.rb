class FantasyLeaguesController < ApplicationController
  before_action :set_model, only: %i[ show edit update destroy ]

  def index
    @title_section = 'Fantasy Leagues'
    @fantasy_leagues = FantasyLeague.all
  end

  def show
    @title_section = 'Fantasy League'
  end

  def new
    @title_section = 'Create Fantasy League'
    @model = FantasyLeague.new
  end

  def edit
    @title_section = 'Edit Fantasy League'
  end

  def create
    @model = FantasyLeague.new(fantasy_league_params)

    if @model.save
      redirect_to fantasy_league_url(@fantasy_league), notice: "Fantasy league was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @model.update(fantasy_league_params)
      redirect_to fantasy_league_url(@model), notice: "Fantasy league was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @fantasy_league.destroy
      redirect_to fantasy_leagues_url, notice: "Fantasy league was successfully destroyed."
    else
      redirect_to fantasy_leagues_url, alert: "Error deleting the fantasy league."
    end
  end

  private
  
    def set_model
      @model = FantasyLeague.where(id: params[:id]).first
      if (@model.blank?)
        redirect_to fantasy_leagues_url, alert: "Equipe não Encontrada."
      end
    end

    def fantasy_league_params
      params.require(:fantasy_league).permit(:name, :status)
    end
end

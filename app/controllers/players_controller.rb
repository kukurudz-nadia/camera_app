# frozen_string_literal: true

class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update destroy]
  def index
    @players = Player.order(:name)
  end

  def show; end

  def new
    @player = Player.new
  end

  def edit; end

  def create
    @player = Player.create(players_params)

    PictureAttachmentService.attach(@player, params['player']['player_picture'])

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json {render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def update; end

  def destroy; end

  private
  def set_player
    @player = Player.find(params[:id])
  end

  def players_params
    params.require(:player).permit(
      :name,
      :dob,
      :pob,
      :age,
      :height,
      :position,
      :foot,
      :current_club,
      :player_picture
    )
  end
end

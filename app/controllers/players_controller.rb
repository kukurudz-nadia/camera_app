# frozen_string_literal: true
#
class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update destroy]
  def index
    @players = Player.order(:name)
  end

  def show; end

  def new; end

  def edit; end

  def create; end

  def update; end

  def destroy; end

  private
  def set_player
    @player = Player.find(params[:id])
  end
end

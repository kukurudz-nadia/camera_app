# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PlayersController, type: :controller do
  describe 'GET #index' do
    let!(:players) { create_list :player, 5 }

    subject do
      get :index
      response
    end

    it 'show all players' do
      is_expected.to be_successful
      is_expected.to render_template :index
    end
  end

  describe 'GET #show' do
    let!(:player) { create :player }

    subject do
      get :show, params: { id: player.id }
    end

    it 'show single player' do
      is_expected.to be_successful
      is_expected.to render_template :show
    end
  end
end
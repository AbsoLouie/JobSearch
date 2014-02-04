require 'spec_helper'

describe UsersController do

  describe '#New' do
    it 'Renders New View' do
      get :new
      response.should render_template :new
    end
  end

  describe '#Create' do
    it 'New User' do
      expect{ post :create, user: FactoryGirl.attributes_for(:user)
        }.to change{ User.count }.by(1)
    end
  end

end
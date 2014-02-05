require 'spec_helper'

describe SessionsController do

  context '#New' do
    it 'Renders Sign-In' do
      get :new
      response.should render_template :new
    end
  end
  
  context '#Create' do
    it 'Starts Session with correct password' do
      user = create(:user)
      post :create, {username: user.username, password: user.password}
      expect(session[:user]).to eq(user)
    end    

    it 'Redirects with incorrect password' do
      user = create(:user)
      post :create, {username: user.username, password: 'wrong'}
      expect(session[:user]).to be_nil
    end
  end

  context '#Destroy' do
    it 'Ends Session' do
      session[:user] = "dummy data"
      delete :destroy
      expect(session[:user]).to be_nil
    end
  end

end
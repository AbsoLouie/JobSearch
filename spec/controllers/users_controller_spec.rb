require 'spec_helper'

describe UsersController do
  
  context '#Create' do
    it 'New User' do
      expect{ post :create, user: attributes_for(:user)
        }.to change{User.count}.by(1)
    end 
  end

end
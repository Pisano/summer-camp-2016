# spec/controllers/users_controller_spec.rb
require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let!(:user1) do
    User.create(email: "user1@pisano.co", password:"test")
  end

  let!(:user2) do
    User.create(email: "user2@pisano.co", password:"test")
  end

  describe "GET #index" do
    it "render all the users" do
      get :index

      resp = JSON.parse(response.body)
      expect(resp.map{ |r| r["id"] }).to include(user1.id, user2.id)
    end
  end
end

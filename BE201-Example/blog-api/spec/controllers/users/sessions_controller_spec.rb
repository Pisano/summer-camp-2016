require 'rails_helper'

RSpec.describe Users::SessionsController, type: :controller do

  let!(:control_user) do
    User.create(email: "test@test.com", password: "12345678")
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, params: { user: { email: "test@test.com",
                                      password: "12345678" } }

      json_r = JSON.parse(response.body)

      expect(response).to have_http_status(:success)
      expect(json_r["token"]).not_to be nil
    end

    it "returns an error if wrong credentials" do
      post :create, params: { user: { email: "test@test.com",
                                      password: "87654321" } }

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe "DELETE #destroy" do
    it "returns http success" do
      delete :destroy, params: { id: control_user.id }

      json_r = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
      expect(json_r["token"]).to be nil
    end
  end

end

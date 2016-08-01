require 'rails_helper'

RSpec.describe Users::RegistrationsController, type: :controller do

  describe "POST #create" do
    it "returns http success" do
      post :create, params: { user: { email: "test@pisano.co",
                                      password: "12345678" } }

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)["password_digest"]).not_to be nil
    end

    it "returns unprocessable_entity if not enough params" do
      post :create, params: { user: { first_name: "leo" } }

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

end

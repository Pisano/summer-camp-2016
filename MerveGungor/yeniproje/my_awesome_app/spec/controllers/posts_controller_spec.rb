require 'rails_helper'

RSpec.describe PostsController, type: :controller do



let!(:post) do
    Post.create
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: post.id }

      expect(response).to have_http_status(:success)
    end

    it "assigns the correct post in instance variable" do
      get :show, params: { id: post.id }

      expect(JSON.parse(response.body)["id"]).to eq(post.id)
    end
  end
end

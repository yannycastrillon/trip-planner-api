require 'rails_helper'

RSpec.describe "Api::V1::Trips", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/trip/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/v1/trip/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/trip/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/trip/update"
      expect(response).to have_http_status(:success)
    end
  end
end

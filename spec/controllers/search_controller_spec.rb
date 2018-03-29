require 'rails_helper'

RSpec.describe SearchController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #company" do
    it "returns http success" do
      get :company
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #sector" do
    it "returns http success" do
      get :sector
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #industry" do
    it "returns http success" do
      get :industry
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #state" do
    it "returns http success" do
      get :state
      expect(response).to have_http_status(:success)
    end
  end

end

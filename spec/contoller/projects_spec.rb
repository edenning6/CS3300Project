require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:projects) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: projects }
      expect(response).to be_success
    end
  end
end

class PostsControllerTest < ActionController::TestCase
  include Devise::Test::IntegrationHelpers # Rails >= 5
end
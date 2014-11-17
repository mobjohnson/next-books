require "rails_helper"

RSpec.describe CollectionsController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the collections into @collections" do
      collection1, collection2 = Collection.create!, Collection.create!
      get :index

      expect(assigns(:collections)).to match_array([collection1, collection2])
    end
  end
end



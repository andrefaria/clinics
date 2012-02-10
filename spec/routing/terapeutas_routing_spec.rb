require "spec_helper"

describe TerapeutasController do
  describe "routing" do

    it "routes to #index" do
      get("/terapeutas").should route_to("terapeutas#index")
    end

    it "routes to #new" do
      get("/terapeutas/new").should route_to("terapeutas#new")
    end

    it "routes to #show" do
      get("/terapeutas/1").should route_to("terapeutas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/terapeutas/1/edit").should route_to("terapeutas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/terapeutas").should route_to("terapeutas#create")
    end

    it "routes to #update" do
      put("/terapeutas/1").should route_to("terapeutas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/terapeutas/1").should route_to("terapeutas#destroy", :id => "1")
    end

  end
end

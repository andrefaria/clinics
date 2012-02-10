require "spec_helper"

describe PacientesController do
  describe "routing" do

    it "routes to #index" do
      get("/pacientes").should route_to("pacientes#index")
    end

    it "routes to #new" do
      get("/pacientes/new").should route_to("pacientes#new")
    end

    it "routes to #show" do
      get("/pacientes/1").should route_to("pacientes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pacientes/1/edit").should route_to("pacientes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pacientes").should route_to("pacientes#create")
    end

    it "routes to #update" do
      put("/pacientes/1").should route_to("pacientes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pacientes/1").should route_to("pacientes#destroy", :id => "1")
    end

  end
end

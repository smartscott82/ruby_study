require "spec_helper"

describe TodoList2sController do
  describe "routing" do

    it "routes to #index" do
      get("/todo_list2s").should route_to("todo_list2s#index")
    end

    it "routes to #new" do
      get("/todo_list2s/new").should route_to("todo_list2s#new")
    end

    it "routes to #show" do
      get("/todo_list2s/1").should route_to("todo_list2s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/todo_list2s/1/edit").should route_to("todo_list2s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/todo_list2s").should route_to("todo_list2s#create")
    end

    it "routes to #update" do
      put("/todo_list2s/1").should route_to("todo_list2s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/todo_list2s/1").should route_to("todo_list2s#destroy", :id => "1")
    end

  end
end

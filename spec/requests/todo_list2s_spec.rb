require 'spec_helper'

describe "TodoList2s" do
  describe "GET /todo_list2s" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get todo_list2s_path
      response.status.should be(200)
    end
  end
end

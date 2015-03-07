require 'spec_helper'

describe "todo_list2s/index" do
  before(:each) do
    assign(:todo_list2s, [
      stub_model(TodoList2,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(TodoList2,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of todo_list2s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

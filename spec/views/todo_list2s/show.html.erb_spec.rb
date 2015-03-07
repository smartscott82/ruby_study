require 'spec_helper'

describe "todo_list2s/show" do
  before(:each) do
    @todo_list2 = assign(:todo_list2, stub_model(TodoList2,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end

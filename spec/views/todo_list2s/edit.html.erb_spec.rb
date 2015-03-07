require 'spec_helper'

describe "todo_list2s/edit" do
  before(:each) do
    @todo_list2 = assign(:todo_list2, stub_model(TodoList2,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit todo_list2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", todo_list2_path(@todo_list2), "post" do
      assert_select "input#todo_list2_title[name=?]", "todo_list2[title]"
      assert_select "textarea#todo_list2_description[name=?]", "todo_list2[description]"
    end
  end
end

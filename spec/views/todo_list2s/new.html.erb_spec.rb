require 'spec_helper'

describe "todo_list2s/new" do
  before(:each) do
    assign(:todo_list2, stub_model(TodoList2,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new todo_list2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", todo_list2s_path, "post" do
      assert_select "input#todo_list2_title[name=?]", "todo_list2[title]"
      assert_select "textarea#todo_list2_description[name=?]", "todo_list2[description]"
    end
  end
end

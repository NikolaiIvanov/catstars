require 'rails_helper'

RSpec.describe "cats/new", type: :view do
  before(:each) do
    assign(:cat, Cat.new(
      :name => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new cat form" do
    render

    assert_select "form[action=?][method=?]", cats_path, "post" do

      assert_select "input#cat_name[name=?]", "cat[name]"

      assert_select "input#cat_image[name=?]", "cat[image]"
    end
  end
end

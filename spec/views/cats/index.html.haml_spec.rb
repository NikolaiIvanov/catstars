require 'rails_helper'

RSpec.describe "cats/index", type: :view do
  before(:each) do
    assign(:cats, [
      Cat.create!(
        :name => "Name",
        :image => "Image"
      ),
      Cat.create!(
        :name => "Name",
        :image => "Image"
      )
    ])
  end

  it "renders a list of cats" do
    render
    assert_select "h1", :text => "Cat Stars".to_s, :count => 1
  end
end

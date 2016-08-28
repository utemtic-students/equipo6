require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :TelNumber => "",
      :Municipality => "MyString",
      :State => "MyText",
      :Colony => "MyText",
      :OutdoorNumbe => "",
      :IndoorNumbe => "",
      :Name => "MyText",
      :Latitud => "",
      :Longitud => "",
      :score => "",
      :businessmans => "MyText",
      :Description => "MyText"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_TelNumber[name=?]", "post[TelNumber]"

      assert_select "input#post_Municipality[name=?]", "post[Municipality]"

      assert_select "textarea#post_State[name=?]", "post[State]"

      assert_select "textarea#post_Colony[name=?]", "post[Colony]"

      assert_select "input#post_OutdoorNumbe[name=?]", "post[OutdoorNumbe]"

      assert_select "input#post_IndoorNumbe[name=?]", "post[IndoorNumbe]"

      assert_select "textarea#post_Name[name=?]", "post[Name]"

      assert_select "input#post_Latitud[name=?]", "post[Latitud]"

      assert_select "input#post_Longitud[name=?]", "post[Longitud]"

      assert_select "input#post_score[name=?]", "post[score]"

      assert_select "textarea#post_businessmans[name=?]", "post[businessmans]"

      assert_select "textarea#post_Description[name=?]", "post[Description]"
    end
  end
end

require 'rails_helper'

RSpec.describe "sites/new", type: :view do
  before(:each) do
    assign(:site, Site.new(
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

  it "renders new site form" do
    render

    assert_select "form[action=?][method=?]", sites_path, "post" do

      assert_select "input#site_TelNumber[name=?]", "site[TelNumber]"

      assert_select "input#site_Municipality[name=?]", "site[Municipality]"

      assert_select "textarea#site_State[name=?]", "site[State]"

      assert_select "textarea#site_Colony[name=?]", "site[Colony]"

      assert_select "input#site_OutdoorNumbe[name=?]", "site[OutdoorNumbe]"

      assert_select "input#site_IndoorNumbe[name=?]", "site[IndoorNumbe]"

      assert_select "textarea#site_Name[name=?]", "site[Name]"

      assert_select "input#site_Latitud[name=?]", "site[Latitud]"

      assert_select "input#site_Longitud[name=?]", "site[Longitud]"

      assert_select "input#site_score[name=?]", "site[score]"

      assert_select "textarea#site_businessmans[name=?]", "site[businessmans]"

      assert_select "textarea#site_Description[name=?]", "site[Description]"
    end
  end
end

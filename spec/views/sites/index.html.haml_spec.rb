require 'rails_helper'

RSpec.describe "sites/index", type: :view do
  before(:each) do
    assign(:sites, [
      Site.create!(
        :TelNumber => "",
        :Municipality => "Municipality",
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
      ),
      Site.create!(
        :TelNumber => "",
        :Municipality => "Municipality",
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
      )
    ])
  end

  it "renders a list of sites" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Municipality".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

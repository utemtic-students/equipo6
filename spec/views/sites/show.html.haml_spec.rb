require 'rails_helper'

RSpec.describe "sites/show", type: :view do
  before(:each) do
    @site = assign(:site, Site.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Municipality/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

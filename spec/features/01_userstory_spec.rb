require 'rails_helper'

RSpec.describe "when a user searches" do
  it "when i visit root'/''" do
    visit root_path
    fill_in search["zip_code"], with: "80203"
    click_on "Locate"
    expect(current_path).to eq(search_path)
  end

  xit "when i am on the search results page" do
    visit search_path

    expect(page).to_have
  end
end


# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

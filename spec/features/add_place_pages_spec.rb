require 'rails_helper'

describe "the add a place process" do
  it "adds a new place" do
    visit places_path
    click_link 'New Place'
    fill_in 'Name', :with => 'Planet Granite'
    fill_in 'Street address', :with => '1405 NW 14th Ave'
    fill_in 'City', :with => 'Portland'
    fill_in 'State', :with => 'Oregon'
    click_button 'Create Place'
    expect(page).to have_content 'Places'
  end
end

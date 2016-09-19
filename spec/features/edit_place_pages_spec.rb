require 'rails_helper'

describe "the edit a place process" do
  it "edit a place" do
    user = FactoryGirl.create(:user)
    place = FactoryGirl.create(:place, user_id: user.id)
    login_as(user, :scope => :user)
    visit places_path
    click_link 'Planet Granite'
    click_link 'Edit Place'
    fill_in 'Name', :with => 'Portland Rock Gym'
    fill_in 'Street address', :with => '1405 NW 14th Ave'
    fill_in 'City', :with => 'Portland'
    fill_in 'State', :with => 'Oregon'
    click_button 'Update Place'
    expect(page).to have_content 'Places'
  end
end

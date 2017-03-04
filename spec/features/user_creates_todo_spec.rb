require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    visit root_path
    click_on "Add Todo"
    fill_in "Title", with: "Have Fun!"
    click_on "Submit"
    expect(page).to have_css('.todos li', text: "Have Fun!")
  end
end


require "spec_helper"

feature "Widget management" do
  scenario "User creates a new widget" do
    visit "/"

    expect(page).to have_text("Static#index")
  end
end

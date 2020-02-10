require 'rails_helper'

RSpec.describe "Accordian", type: :system do
  before do
    driven_by(:rack_test)
  end

  #pending "add some scenarios (or delete) #{__FILE__}"

  it "has a search bar" do
    visit '/page'
    expect(page).to have_selector('.serach_bar')
  end

end

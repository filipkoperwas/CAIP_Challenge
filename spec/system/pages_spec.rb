require 'rails_helper'

RSpec.describe "Pages", type: :system do
  before do
    driven_by(:rack_test)
  end

  context "page layout" do
    it "has tabs" do
      visit '/page'
      expect(page).to have_selector('.tabs')
      expect(page).to have_selector('.tab-menu')
      expect(page).to have_text('Accordian')
      expect(page).to have_text('Graph')
      find('#graph_tab').click
      expect(page).to have_text('page2')
    end
    
    it "has my name" do
      visit '/page'
      expect(page).to have_text("Filip Koperwas")
    end
      
  end
end

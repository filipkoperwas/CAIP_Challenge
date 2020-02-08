require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  context "with render views" do
    render_views

    describe "GET show" do
      it "renders the show view" do
        get :show
        expect(response.body).to match(/youtube/)
      end
    end
  end

end

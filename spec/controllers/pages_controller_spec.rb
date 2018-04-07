require "rails_helper"

RSpec.describe PagesController, type: :controller do
  describe "GET #home" do
    it "renders success" do
      get :home
      expect(response).to be_success #> response.status == 200
    end
  end

end

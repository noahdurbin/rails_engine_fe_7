require 'rails_helper'

RSpec.describe "Item Show page" do
  describe 'show a list of attributes for given item' do
    it 'displays an items information', :vcr do
      visit "/items/4"

      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      expect(page).to have_content("Unit Price: 42.91")
      expect(page).to have_link("1")
    end
  end
end

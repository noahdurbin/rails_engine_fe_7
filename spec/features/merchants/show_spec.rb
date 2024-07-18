require 'rails_helper'

RSpec.describe 'Merchants Show', type: :feature do
  describe 'Merchant show page shows a merchants name and product offering' do
    it 'lists all merchants returned by the backend', :vcr do
      visit '/merchants/1'

      expect(page).to have_content("Schroeder-Jerde")
      save_and_open_page
    end
  end
end

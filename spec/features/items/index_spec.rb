require 'rails_helper'

RSpec.describe 'Items Index', type: :feature do
  describe 'shows a list of all Items' do
    it 'lists all items returned by the backend', :vcr do
      visit '/items'

      expect(page).to have_content('Items')
      expect(page).to have_link('Item Nemo Facere')
      expect(page).to have_link('Item Expedita Aliquam')
    end
  end
end

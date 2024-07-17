require 'rails_helper'

RSpec.describe 'Merchants Index', type: :feature do
  describe 'shows a list of all merchants' do
    it 'lists all merchants returned by the backend' do
      visit '/merchants'

      expect(page).to have_content('Merchants')
      expect(page).to have_link("Schroeder-Jerde")
    end
  end
end

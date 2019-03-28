require 'rails_helper'

RSpec.describe 'Consoles features' do
  describe 'viewing the index' do
    it 'list all of the consoles' do
      #Test data
      Console.create!(name: 'Switch', manufacturer: 'Nintendo')
      Console.create!(name: 'Wii', manufacturer: 'Nintendo')

      #Interact with app
      visit('/')
      click_link('Consoles')

      #Expecteds
      expect(page).to have_content('Nintendo Switch')
      expect(page).to have_content('Nintendo Wii')
    end
  end
end

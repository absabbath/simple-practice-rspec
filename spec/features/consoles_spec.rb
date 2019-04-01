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

  describe 'adding a new console' do
    it 'add consoles to list of consoles' do
      visit('/')
      click_link('Consoles')
      click_link('Add New Console')

      expect(current_path).to have_content('/consoles/new')

      fill_in('Name', with: 'Playstation Vita')
      fill_in('Manufacturer', with: 'Sony')

      click_button('Create')

      expect(current_path).to have_content('/consoles')
      expect(page).to have_content('Sony Playstation Vita')
    end
  end

end

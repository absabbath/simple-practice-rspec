require 'rails_helper'

RSpec.describe 'Home features' do
  it 'display the name of the app' do
  	visit('/home')
  	expect(page).to have_content('Game Tracker')
  	click_link('About')
  	expect(current_path).to eql('/about')
  	expect(page).to have_content('About')
  end
end
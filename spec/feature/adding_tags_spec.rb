require 'capybara/rspec'
require 'capybara/dsl'

feature 'add tag links' do
  scenario 'tagging links in the bookmark manager' do
    visit '/links/new'
      fill_in 'url',   with: 'http://www.zombo.com/'
      fill_in 'title', with: 'This is Zombocom'
      fill_in 'name', with: 'knitting'
      click_button 'Create link'
      expect(current_path).to eq '/links'

      within 'ul#links' do
        expect(page).to have_content('knitting')
      end
    end
  end

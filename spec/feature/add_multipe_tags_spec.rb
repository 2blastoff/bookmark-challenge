feature 'add multiple' do
  scenario 'adding multiple tags under link' do
      visit '/links/new'
      fill_in 'url',   with: 'http://www.zombo.com/'
      fill_in 'title', with: 'This is Zombocom'
      fill_in 'name', with: 'knitting, sport, flower'
      click_button 'Create link'
      expect(current_path).to eq '/links'

      within 'ul#links' do
        expect(page).to have_content('knitting|sport|flower')
      end
    end
  end

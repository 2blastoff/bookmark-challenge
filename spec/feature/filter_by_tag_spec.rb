


feature 'Filtering links by tag' do

  before(:each) do

    Link.create(url: 'http://www.google.com', title: 'Google', tags: [Tag.first_or_create(name: 'search')])
    Link.create(url: 'http://www.zombo.com', title: 'Zombo', tags: [Tag.first_or_create(name: 'bubbles')])
    Link.create(url: 'http://www.makersacademy.com', title: 'MA', tags: [Tag.first_or_create(name: 'code')])
    Link.create(url: 'http://www.bing.com', title: 'Bing', tags: [Tag.first_or_create(name: 'search')])

  end

  scenario 'a user filtering their links by tag' do

    visit '/tags/search'
    expect(page).to have_content('Google')
    expect(page).to_not have_content('MA')
    expect(page).to have_content('Bing')

  end

end

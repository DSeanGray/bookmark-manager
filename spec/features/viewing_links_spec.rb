feature 'viewing links' do

  scenario 'user can see links on a page' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit '/links'
    expect(page.status_code).to eq 200
    within 'ul#links' do
    expect(page).to have_content('Makers Academy')
    end
  end

    scenario 'I can filter links by tag' do
      Link.create(url: 'http://www.zombo.com', title: 'This is Zombocom', tags: [Tag.first_or_create(name: 'bubbles')])
      visit '/tags/bubbles'
      expect(page.status_code).to eq(200)
      within 'ul#links' do
      expect(page).to have_content('This is Zombocom')
      end
    end
  end

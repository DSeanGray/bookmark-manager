feature 'creating new links' do

  scenario 'the user can create a new link' do
    visit '/links/new'
    fill_in('title', with: 'This is Zombocom')
    fill_in('url', with: 'http://www.zombo.com/')
    click_button 'Create link'
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('This is Zombocom')
    end
  end
end

require_relative '../web_helper.rb'

feature 'signup form' do
  scenario 'user enters email and password' do
    sign_up
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, alice@example.com')
    expect(User.first.email).to eq('alice@example.com')
  end
end

require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word_count path', {:type => :feature}) do
  it('will enter a master word and a search text and display number of occurances of the master word in the search text') do
    visit('/')
    fill_in('master_word', :with => 'cat')
    fill_in('search_text', :with => 'catatonic dog cat')
    click_button('Search!')
    expect(page).to have_content('2')
  end
end

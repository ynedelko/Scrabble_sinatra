require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the scrabble score path", {:type => :feature}) do
  it("displays the correct scrabble score for a user entered word") do
    visit('/')
    fill_in('word', :with => 'Zeitgeist')
    click_button('Submit')
    expect(page).to have_content(19)
  end
end

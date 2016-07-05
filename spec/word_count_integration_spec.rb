require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
# set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('processes the user entry and returns the number of times a word is in the phrase entered') do
    visit('/')
    fill_in('word_entered', :with => 'If')
    fill_in('sentence_entered', :with => 'If Peter Piper picked a peck of pickled peppers, where is the peck of pickled peppers Peter Piper picked')
    click_button('Submit')
    expect(page).to have_content(1)
  end
end

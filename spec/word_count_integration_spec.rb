require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
    set(:show_exceptions, false)

    # describe('String#word_count') do
    # it("enter a string of words and count the word input from it") do
    #   expect(("beowulf").title_case()).to(eq("Beowulf"))
    # end

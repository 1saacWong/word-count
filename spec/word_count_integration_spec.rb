require('capybara/rspec')
  require('./app')
  # Capybara.app = Sinatra::Application
    # set(:show_exceptions, false)

  describe ('String#word_count') do

  it "do full word matching" do
    expect("hello".word_count("hello")).to eq(1)
  end
  it "do full word matching for whole sentence" do
    expect("I’m taking my cat on a walk through the catacombs".word_count("cat")).to eq(1)
  end
  end

 describe ('String#word_count2') do
  it "do partial matching for whole sentence" do
    expect("I’m taking my cat on a walk through the catacombs".word_count2("cat")).to eq(2)
  end

  it "do partial matching" do
    expect("hello".word_count2("l")).to eq(2)
  end
end

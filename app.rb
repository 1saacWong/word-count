require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/word_count')
  require('pry')

  get('/') do
    erb(:index)
  end

  get('/title') do

    @search = params.fetch('search')
    @input = params.fetch('input')
    @count = @input.word_count(@search)
    erb(:title)
  end

  get('/title2') do

    @search2 = params.fetch('search2')
    @input2 = params.fetch('input2')
    @count2 = @input2.word_count2(@search2)
    erb(:title2)
  end

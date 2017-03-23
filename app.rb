require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/word_count')
  require('pry')

  get('/') do
    erb(:index)
  end

  get('/title') do
    search = params.fetch('search')
    @input = params.fetch('input').word_count(search)
    erb(:title)
  end

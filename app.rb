require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result.erb') do
  @master_word = params.fetch('master_word')
  @result = params.fetch('search_text').word_count(params.fetch('master_word'))
  erb(:result)
end

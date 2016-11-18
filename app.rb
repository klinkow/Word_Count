require('sinatra')
require('sinatra/reloader')
# require('./lib/method_here')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

# get('/another_page_here') do
#   erb(:another_page_here)
# end

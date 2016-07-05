require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @word_entered = params.fetch('word_entered')
  @sentence_entered = params.fetch('sentence_entered')
  @results = @word_entered.word_count(@sentence_entered)
  erb(:word_count)
end

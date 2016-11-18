require('rspec')
require('./lib/word_count')

describe('Class#word_count') do
  it('will take a single word input, check if it matches the argument word and output a wordcount of 1') do
    expect('cat').word_count('cat')to(eq('1'))
  end

end

require('rspec')
require('./lib/word_count')

describe('String#word_count') do

  it('will take a single word input, check if it matches the argument word and output a wordcount of 1') do
    expect('cat'.word_count('cat')).to(eq(1))
  end

  it('will take a multiple-word input, check if any of the words match the argument word and update the counter for each') do
    expect('cat dog cat'.word_count('cat')).to(eq(2))
  end

  it('will take a multiple-word input, check if any of the words, regardless of case of their first letter match the argument word and update the counter for each') do
    expect('cat dog Cat'.word_count('cat')).to(eq(2))
  end

end

require('rspec')
require('word_count')

describe('String#word_count') do
  it('returns number of times word is in string when string entered is a word')do
    expect('picked'.word_count ('peck')).to(eq(0))
  end
  it('returns 1 when word is in string with multiple words one time') do
    expect('If'.word_count('If Peter Piper picked a peck of pickled peppers, where is the peck of pickled peppers Peter Piper picked')).to(eq(1))
  end
end

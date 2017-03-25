# write a method that takes in a string
# and returns the words that use alliteration
# ex. input 'peter piper picks a peck of pickled peppers'

# peter piper picks tremendous tree-like pickled peppers

# peter piper picks pickled peppers
# tremendous tree-like

# NOTES
# 'hello'.match(/(h)e(l)/)
# --> d = <MatchData "hel" 1:"h" 2:"l">
# d[0] --> "hel" (full match)
# d[1] --> "h" (first match)
# d[2] --> "l" (second match)


class Alliteration
  def find_alliterative_words(phrase)
    matches = phrase.match(/(\w+\s+)+|(\w+)+/)
    matches
  end
end

describe Alliteration do
  subject { Alliteration.new }

  describe '#alliterative_words' do
    it 'finds 2 words adjacent words that start with the same letter' do
      expect(subject.find_alliterative_words('peter piper'))
        .to contain_exactly('peter piper')

      # expect(
      #   subject.find_alliterative_words('peter piper picks tremendous tree-like pickled peppers')
      #   )
      #   .to eq(
      #     [
      #       'peter piper picks pickled peppers',
      #       'tremendous tree-like'
      #     ]
      #   )

      # expect(
      #   subject.find_alliterative_words('peter piper picks a peck of pickled peppers')
      # )
      #   .to eq(['peter piper picks pickled peppers'])
    end
  end
end
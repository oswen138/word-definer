require ('rspec')
require ('word')
require ('definition')

describe '#Word' do

  before(:each) do
    Word.clear()
  end

  describe('#save') do
    it('saves a word') do
      word = Word.new('blueberry', nil)
      word.save()
      word2 = Word.new('apple', nil)
      word2.save()
      expect(Word.all).to(eq([word, word2]))
    end
  end

  describe('.all') do
    it("returns an empty array when there are no words") do
      expect(Word.all).to(eq([]))
    end
  end

  describe("#==") do
    it ("is the same word if it has the same attributes as another word") do
      word = Word.new('pear', nil)
      word2 = Word.new('pear', nil)
      expect(word).to(eq(word2))
    end
  end

  describe('.clear') do
    it("clears all words") do
      word = Word.new("ruby", nil)
      word.save()
      word2 = Word.new("gem", nil)
      word2.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe('.find') do
    it("finds an word by id") do
      word = Word.new("blueberry", nil)
      word.save()
      word2 = Word.new("apple", nil)
      word2.save()
      expect(Word.find(word.id)).to(eq(word))
    end
  end

  describe('#update') do
    it("updates a word by id") do
      word = Word.new("Blueberry", nil)
      word.save()
      word.update("Durian")
      expect(word.word_input).to(eq("Durian"))
    end
  end

  describe('#delete') do
    it("deletes a word by id") do
      word = Word.new("Blueberry", nil)
      word.save()
      word2 = Word.new("Apple", nil)
      word2.save()
      word.delete()
      expect(Word.all).to(eq([word2]))
    end
  end

  describe('.sort') do
    it("will sort @@words by word input") do
      word = Word.new("Blueberry", nil)
      word.save()
      word2 = Word.new("Apple", nil)
      word2.save()
      expect(Word.sort).to(eq([word2, word]))
    end
  end

  describe('#definitions') do
    it("returns an word's definitions") do
      word = Word.new("Blueberry", nil)
      word.save()
      definition = Definition.new("Fruit", word.id, nil)
      definition.save()
      definition2 = Definition.new("Edible", word.id, nil)
      definition2.save()
      expect(word.definitions).to(eq([definition, definition2]))
    end
  end

  describe '#add_definition' do
  it 'adds a definition to the word' do
    word = Word.new({:word => "test"})
    definition = Definition.new({:def => "test"})
    word.add_definition(definition)
    expect(word.definitions).to eq ([definition])
  end
 end
end
class Word
  attr_reader :id, :word_input
  attr_accessor :word_input

  @@words = {}
  @@total_rows = 0

  def initialize(word_input,  word_id, id)
    @word_input = word_input
    @id = id || @@total_rows +=1
  end

  def self.all
    @@songs.values
  end

  def self.sort
    array_of_words = @@words.values
    return array_of_words.sort_by {|obj| obj.name}
  end

  def self.all
    @@words.values()
  end

  def save
    @@words[self.id] = Word.new(self.word_input, self.word_id, self.id)
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end
 
  def self.find(id)
    @@words[id]
  end

  def update(word_input)
    self.word_input = word_input
    @@words[self.id] = Word.new(self.word_input, self.id)
  end

  def delete
    @@words.delete(self.id)
  end

  def definitions
    Definition.find_by_word(self.id)
  end
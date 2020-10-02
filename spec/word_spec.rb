require ('rspec')
require ('word')

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
      word2 = Album.new('pear', nil)
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
      expect(Word.find(album.id)).to(eq(album))
    end
  end

  describe('#update') do
    it("updates and album by id") do
      album = Album.new("Giant Steps", nil)
      album.save()
      album.update("A Love Supreme")
      expect(album.name).to(eq("A Love Supreme"))
    end
  end

  describe('#delete') do
    it("deletes an album by id") do
      album = Album.new("Giant Steps", nil)
      album.save()
      album2 = Album.new("Blue", nil)
      album2.save()
      album.delete()
      expect(Album.all).to(eq([album2]))
    end
  end

  describe('.search') do
    it("finds album by name") do
      album = Album.new("Giant Steps", nil)
      album.save()
      album2 = Album.new("Blue", nil)
      album2.save()
      expect(Album.search('Giant Steps')).to(eq(album))
    end
  end

  describe('.sort') do
    it("will sort @@albums by name") do
      album = Album.new("Giant Steps", nil)
      album.save()
      album2 = Album.new("Blue", nil)
      album2.save()
      expect(Album.sort).to(eq([album2, album]))
    end
  end

  describe('#songs') do
    it("returns an album's songs") do
      album = Album.new("Giant Steps", nil)
      album.save()
      song = Song.new("Naima", album.id, nil)
      song.save()
      song2 = Song.new("Cousin Mary", album.id, nil)
      song2.save()
      expect(album.songs).to(eq([song, song2]))
    end
  end
end
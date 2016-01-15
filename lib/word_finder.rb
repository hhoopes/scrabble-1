class WordFinder

  def words
    File.read('/usr/share/dict/words').split("\n")
  end

  def look_up_word(word)
    if word
      words.detect { |each_word| each_word == word }
      end
    end
end

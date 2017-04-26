require('rspec')
require('hangman')

describe('Hangman') do
  # describe('#get_game_word') do
  #   it("returns random word from large array") do
  #     test_hangman = Hangman.new()
  #     expect(test_hangman.game_word()).to eq("")
  #   end
  # end

  describe('#chances') do
    it("returns number of chances left") do
      test_hangman = Hangman.new()
      expect(test_hangman.chances()).to eq(10)
    end
  end

  describe("#add_picked_letter") do
    it("returns array with picked letters") do
      test_hangman = Hangman.new()
      test_hangman.test_word()
      test_hangman.add_picked_letter("y")
      expect(test_hangman.add_picked_letter("l")).to eq(["y", "l"])
    end
  end

  describe('#find_matches') do
    it("returns number of chances left") do
      test_hangman = Hangman.new()
      test_hangman.test_word()
      test_hangman.add_picked_letter("y")
      test_hangman.find_matches()
      expect(test_hangman.word_state()).to eq("y _ _ _ _ _")
    end
  end
end

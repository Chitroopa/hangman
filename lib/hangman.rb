require('pry')
# MVP
# find random word for hangman from array we make
# if not match, reduce chances from 10 total chances
# if chances == 0, lose
# if match,
#
# create buttons for each letter

class Hangman
  def initialize
    @game_word = get_game_word()
    @word_state = @game_word.dup()
    @chances = 10
    @picked_letters = []
  end

  def game_word
    @game_word
  end

  def chances
    @chances
  end

  def word_state
   @word_state.split("").join(" ")
  end

  def test_word
    @game_word = "yellow"
    @word_state = @game_word.dup()
  end

  def add_picked_letter(@letter_choice)
    @picked_letters.push(@letter_choice)
  end

  def check_chances
    if @game_word.split().include?(@letter_choice)
      @chances
    else
      @chances -= 1
    end
  end

  def game_over
    return @chances == 0
  end

  def find_matches
    remaining_letters = @word_state.split("") - @picked_letters
    remaining_letters.each() do |letter|
      @word_state.gsub!(letter, "_")
    end
  end

  def get_game_word
    words = ["far", "out", "in", "the", "ocean", "water", "is", "as", "blue", "petals", "of", "loveliest", "cornflower", "and", "clear", "purest", "glass", "but", "it", "very", "deep", "too", "goes", "down", "deeper", "than", "any", "anchor", "rope", "will", "go", "many", "steeples", "would", "have", "to", "be", "stacked", "one", "on", "top", "another", "reach", "from", "bottom", "surface", "sea", "there", "that", "folk", "live", "now", "dont", "suppose", "are", "only", "bare", "white", "sands", "at", "no", "indeed", "most", "marvelous", "trees", "flowers", "grow", "with", "such", "pliant", "stalks", "leaves", "least", "stir", "makes", "them", "move", "about", "though", "they", "were", "alive", "all", "sorts", "fish", "large", "small", "dart", "among", "branches", "just", "birds", "flit", "through", "up", "here", "deepest", "spot", "rises", "palace", "king", "its", "walls", "made", "coral", "high", "pointed", "windows", "clearest", "amber", "roof", "mussel", "shells", "open", "shut", "tide", "this", "a", "wonderful", "sight", "see", "for", "every", "shell", "holds", "glistening", "pearls", "which", "pride", "queens", "crown", "had", "been", "widower", "years", "his", "old", "mother", "kept", "house", "him", "she", "was", "clever", "woman", "proud", "her", "noble", "birth", "therefore", "flaunted", "twelve", "oysters", "tail", "while", "other", "ladies", "court", "allowed", "wear", "six", "except", "an", "altogether", "praiseworthy", "person", "particularly", "so", "because", "extremely", "fond", "granddaughters", "little", "princesses", "lovely", "girls", "youngest", "beautiful", "skin", "soft", "tender", "rose", "petal", "eyes", "like", "others", "feet", "body", "ended", "whole", "day", "long", "used", "play", "great", "halls", "where", "grew", "whenever", "thrown", "swim", "swallows", "into", "our", "rooms", "when", "we", "these", "right", "eat", "their", "hands", "let", "themselves", "petted", "outside", "big", "garden", "flaming", "red", "deepblue", "fruit", "glittered", "gold", "blossoms", "flamed", "fire", "constantly", "waving", "soil", "fine", "sand", "burning", "brimstone", "strange", "veil", "lay", "over", "everything", "you", "thought", "yourself", "aloft", "air", "sky", "above", "beneath", "rather", "dead", "calm", "could", "sun", "scarlet", "flower", "light", "streaming", "calyx", "each", "princess", "own", "plot", "dig", "plant", "whatever", "liked", "bed", "shape", "whale", "neater", "hers", "mermaid", "round", "itself", "unusual", "child", "quiet", "wistful", "sisters", "decorated", "gardens", "kinds", "odd", "things", "found", "sunken", "ships", "allow", "nothing", "pretty", "marble", "statue", "figure", "handsome", "boy", "carved", "pure", "sunk", "some", "ship", "wrecked", "beside", "planted", "rosecolored", "weeping", "willow", "tree", "thrived", "well", "graceful", "shaded", "hung", "shadows", "took", "violet", "tint", "swayed", "looked", "if", "roots", "tips", "kissing", "gave", "pleasure", "hear", "world", "human", "beings", "grandmother", "tell", "knew", "cities", "people", "animals", "what", "seemed", "nicest", "land", "fragrant", "those", "scent", "nice", "woods", "green", "saw", "sing", "loud", "sweet", "delightful", "call", "or", "not", "known", "talking", "never", "seen", "bird", "get", "fifteen", "said", "rise", "sit", "rocks", "moonlight", "watch", "sailing", "by", "towns", "next", "year", "since", "older", "still", "five", "wait", "until", "sister", "promised", "first", "told", "half", "enough", "thing", "longed", "know", "eager", "who", "night", "stood", "window", "dark", "waved", "fins", "tails", "moon", "stars", "sure", "quite", "dim", "much", "bigger", "appear", "us", "cloudlike", "shadow", "swept", "across", "either", "swimming", "overhead", "aboard", "did", "dream", "young", "below", "stretching", "arms", "toward", "keel", "eldest", "fifteenth", "birthday", "received", "permission", "got", "back", "hundred", "lie", "bar", "gaze", "city", "shore", "lights", "twinkled", "hundreds", "listen", "music", "chatter", "clamor", "carriages", "church", "towers", "spires", "ringing", "bells", "enter", "dearly", "do", "oh", "how", "intently", "listened", "after", "waters", "clatter", "even", "fancied", "depths", "ring", "second", "wherever", "pleased", "came", "sunset", "spectacle", "ever", "heavens", "golden", "glow", "clouds", "find", "words", "describe", "beauty", "splashed", "tinted", "sailed", "head", "faster", "wild", "swans", "flock", "trailing", "flew", "setting", "swam", "went", "faded", "following", "third", "ascended", "boldest", "broad", "river", "flowed", "gloriously", "vinecolored", "hills", "palaces", "manor", "houses", "glimpsed", "splendid", "heard", "shone", "brightly", "often", "dive", "under", "cool", "face", "cove", "school", "mortal", "children", "paddling", "naked", "wanted", "fright", "ran", "away", "then", "along", "black", "animal", "dog", "before", "barked", "ferociously", "herself", "fled", "forget", "although", "didnt", "fourth", "venturesome", "stayed", "rough", "waves", "place", "around", "miles", "vast", "dome", "gulls", "playful", "dolphins", "turned", "somersaults", "monstrous", "whales", "spouted", "nostrils", "fountains", "playing", "fifth", "turn", "wintertime", "none", "color", "enormous", "icebergs", "drifted", "glistened", "pearl", "more", "lofty", "steeple", "built", "man", "assumed", "fantastic", "shapes", "sparkled", "diamonds", "seated", "largest", "sped", "soon", "frightened", "sailors", "hair", "blowing", "wind"]
    return words.sample()
  end
end

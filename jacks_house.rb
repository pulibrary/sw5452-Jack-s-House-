require "pry-byebug"
class JacksHouse 
    def recite
      generate_poem(poem_phrases)
    end

    def random_recite
      random_phrases = poem_phrases.shuffle
      generate_poem(random_phrases)
    end

    def generate_poem(phrases)
      phrases.map.with_index do |_, index|
        opening_phrase + phrases[0..index].reverse.join(" ") + "."
       end.join("\n")
    end

    def opening_phrase
      "This is "
    end

    def poem_phrases
      [
        "the house that Jack built",
        "the malt that lay in",
        "the rat that ate",
        "the cat that killed",
        "the dog that worried",
        "the cow with the crumpled horn that tossed",
        "the maiden all forlorn that milked",
        "the man all tattered and torn that kissed",
        "the priest all shaven and shorn that married",
        "the rooster that crowed in the morn that woke",
        "the farmer sowing his corn that kept",
        "the horse and the hound and the horn that belonged to"
      ]
    end
end
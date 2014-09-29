class String
  def sentences
    gsub(/\n|\r/, ' ').split(/\.\s*/)     #  we're subing new lines and carriage returns w/ a space then splitting at a period followed by a whitespace so we get everything into one long string
  end

  def words
    scan(/\w[\w\'\-]*/)
  end
end


class WordPlay
  def self.best_sentence(sentences,desired_words)  #use of self makes this a class method same as using def String.best_sentence
    ranked_sentences = sentences.sort_by do |s|    #sort_by is an enumerator that takes a block and then sorts is in this case by length of word
      s.words.length - (s.downcase.words - desired_words).length
    end
    ranked_sentences.last
  end

  def self.switch_pronouns(text)
    text.gsub(/\b(I am|You are|I|You|Me|Your|My)\b/i) do |pronoun|    #here we take text and sub the regex ors.  The match in the text is stored in pronoun, which we then match w/ our cases and switch.
      case pronoun.downcase
        when "i"
          "you"
        when "you"
          "me"
        when "me"
          "you"
        when "i am"
          "you are"
        when "you are"
          "i am"
        when "your"
          "my"
        when "my"
          "your"
      end
    end.sub(/^me\b/i, 'i')
  end
end

#simple test
some_var = %q{Hello.  This is a test of
basic sentence splitting.  It
even works over multiple lines.}.sentences
hot_words = %w{test ruby}

while input = gets
  puts '>> ' + WordPlay.switch_pronouns(input).chomp + '?'
end



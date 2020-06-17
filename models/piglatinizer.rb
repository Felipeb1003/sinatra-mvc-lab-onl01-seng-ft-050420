  
class PigLatinizer

    def piglatinize(text)
        text.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
    end

    def vowel?(word)
      word.match(/[aAeEiIoOuU]/)
    end
  
    def piglatinize_word(word)
   
      if vowel?(word[0])
        word + "way"
      else
     
        vowel_index = word.index(/[aAeEiIoOuU]/)
        first_part = word.slice(vowel_index..word.length)
        second_part = word.slice(0..vowel_index-1)
        
        first_part + second_part + "ay"
      end
    end
  
  end
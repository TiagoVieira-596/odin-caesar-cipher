def caesar_cipher(word, shift_factor)
  letter_codes_array = word.codepoints
  ciphered_message_codes = letter_codes_array.map do |letter_code|
    i = 0
    if letter_code.chr.upcase != letter_code.chr.downcase
      while i < shift_factor 
        if letter_code == "z".ord
          letter_code = "a".ord
          letter_code -= 1
        elsif letter_code == "Z".ord
          letter_code = "A".ord
          letter_code -= 1
        end
        letter_code += 1
        i += 1
      end
    end
    letter_code
  end
  ciphered_message = ciphered_message_codes.map {|code| code.chr}.join
  p ciphered_message
end

word = ""
until word != "" and word.ascii_only? and word.upcase != word.downcase
  puts "Word:"
  word = gets.chomp
end

shift = ""
until shift != "" and shift.ord in (48..57) and shift.to_i.is_a? Numeric
  puts "shift:"
  shift = gets.chomp
end

caesar_cipher(word, shift.to_i)
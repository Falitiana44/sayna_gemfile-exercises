def caesar_cipher(string, number)
    alphabet = Array("a".."z")
    alphabet_capitalize = Array("A".."Z")
    alphabet_rotate = alphabet.rotate(number)
    alphabet_capitalize_rotate = alphabet_capitalize.rotate(number)
    result = string.chars.map do |x|
      if alphabet.include?(x)
        alphabet_rotate[alphabet.index(x)]
      elsif alphabet_capitalize.include?(x)
        alphabet_capitalize_rotate[alphabet_capitalize.index(x)]
      else
        x
      end
    end
    result.join('')
end
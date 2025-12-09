def shifted_cypher(string, offset)
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
  cypher = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
  offset_iterator = 0
  lowercase_iterator = 0
  uppercase_iterator = 26
  string_iterator = 0
  string_length = string.length
  while offset_iterator < offset
    cypher.push(cypher.shift())
    offset_iterator += 1
  end
  while lowercase_iterator < 26
    cypher[lowercase_iterator].downcase!
    lowercase_iterator += 1
  end
  while uppercase_iterator < 52
    cypher[uppercase_iterator].upcase!
    uppercase_iterator += 1
  end
  while string_iterator < string_length
    alphabet_index = alphabet.find_index(string[string_iterator])
    unless alphabet_index.nil?
      string[string_iterator] = cypher[alphabet_index]
    end
    string_iterator += 1
  end
  string
end

puts shifted_cypher("Hello, World!", 3)
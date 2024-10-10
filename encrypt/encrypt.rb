# Method to encrypt text
# name => encrypt, parameters => String, return => a modified string
# Encryption method: 3 letter shift back in the alphabet
# spaces and punctuiation are unchanged

def encrypt(text)
  # Create an array containing the alphabet
  alphabet = ("A".."Z").to_a
  # Convert input string into an Array
  # Iterate over the Letters Array
  result = text.chars.map do |char|
    # Find each letter's position in the alphabet, match alphabet's number to index
    index = alphabet.index(char) # nil
    # If the index is nil, keep the original character
    if index
      # If index is not nil, subtract 3 from index number
      new_index = index - 3
      # Use new index number to obtain new letter from Alphabet array
      alphabet[new_index]
    else
      char
    end
  end
  # Convert array to string for method return
  result.join

end

# SPOILER
# Refactored version 

# Make the alphabet a constant because it's unchanged
ALPHABET = ("A".."Z").to_a

def encrypt(text)
  text.chars.map do |char|
    index = ALPHABET.index(char)
    index ? ALPHABET[index - 3] : char
  end.join
end

p encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG!")
# => "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD!"

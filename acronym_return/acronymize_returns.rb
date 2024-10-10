## DO NOT USE .each => rewrite pseudocode 
# create new array for the letters
# split the sentence into an array of words
# iterate over words array
# get the first letter and capitalize it
# push letters in to array
# join the array & return

def acronymize(sentence)
  # before refactor
  # result = sentence.split.map do |word|
  #   word[0].capitalize
  # end
  # return result.joins
  sentence.split.map { |word| word[0].capitalize }.join
end

# puts acronymize("what the french") == "WTF"
# puts acronymize("Oh My GoD") == "OMG"
# puts acronymize("as soon as Possible") == "ASAP"
# puts acronymize("as") == "A"
# puts acronymize("") == ""
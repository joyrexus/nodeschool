module.exports = (words) ->
  count = {}
  toWordCounts = (prev, word, i, arr) -> 
    count[word] ?= 0  # initialize to zero if not found
    count[word] += 1
    count
  words.reduce toWordCounts, count

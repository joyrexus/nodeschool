module.exports = (words) ->
  toWordCounts = (count, word) ->
    count[word] ?= 0  # initialize if not yet counted
    count[word] += 1  # increment otherwise
    count
  words.reduce toWordCounts, count={}

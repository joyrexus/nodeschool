exports.init = (db, words, done) ->
  # insert each word in the words array here
  # then call `done()` when you are done inserting words

exports.query = (db, word, done) ->
  # `word` may have '*' chars to denote single-letter wildcards
  # call `done(err, results)` with an array of matching words

###
Your module should export an `init()` function that accepts 3
arguments: a LevelUP `db` object for an empty database, an array of
2, 3 and 4 character Scrabble words and callback that you must call
once you have finished initialising the database.

Your module should also export a `query()` method that also accepts
3 arguments: a LevelUP `db` object (the same store that you
initialised with `init()`), a `word` string containing the query, and
a callback that you must call with either an error object as the first
argument or an array of strings matching the `word` query.

The `word` query may be a complete word, e.g. 'RUN', or a prefix of a
word with '*' characters filling in the blanks, e.g. 'RU*' or 'R**'.
The `.length` will tell you how long the word should be, your results
should only include words of that length. The '*' characters are
wild-cards that can match any character.

For simplicity, the wild-cards will only be on the **end** of a query.
You will always be given either a complete word or a word prefix. You
must limit your results to words of the same length and with the same
prefix.

Your solution will be tested against the official solution, you must
use a ReadStream that **only** returns the exact words that your query
needs to match, and no more.

---------------------------------------------------------------------
HINTS:

This exercise is about coming up with a key schema that is going to be
useful for retrieving results according to the queries you can expect.
You will need to come up with a key structure that will let you limit
your search to only words of the correct number of characters without
including words that have a different number of characters.

Your `init()` function should translate words into appropriate keys,
and your `query()` function should be able to translate a query into
a `start` and `end` for your ReadStream.
###

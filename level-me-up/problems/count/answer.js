// Generated by CoffeeScript 1.6.3
(function() {
  module.exports = function(db, date, done) {
    var count;
    count = 0;
    return db.createReadStream({
      start: date
    }).on('data', function(d) {
      return count += 1;
    }).on('error', function(e) {
      return done(e);
    }).on('end', function() {
      return done(null, count);
    });
  };

  /*
  # Horses: Count
  
  You have been provided with a rich and valuable data-set that you
  need to provide a simple query interface to.
  
  In this exercise you will be given a LevelDB store that contains
  over 2,000 tweets from @horse_js. Your job is to query this data-
  set and return the number of tweets that occur from a given date
  to the *end* of the data set.
  
  Each entry is a single tweet. The key is the exact time that the
  tweet was sent, in standard ISO date format (i.e. the format
  generated by the `Date` object's `toISOString()` method.) The value
  of the entry is simply a String representing the tweet's content.
  
  Write a **module** (not a program) that exports a single function that
  accepts three arguments: an instance of an existing LevelUP database,
  a date string, of the form YYYY-MM-DD and a callback function.
  
  The first argument returned on the callback should be an Error if one
  occurred or null. The second argument, if there was no error, should
  be an integer, representing the number of tweets since that date.
  
  Your solution will be checked against the official solution to ensure
  that your query is targeting the exact range (see details below).
  The output will include the number of "streamed entries".
  
  
  # Hints
  
  Use this boilerplate to get started with your module file:
  
    module.exports = function (db, date, callback) {
      // .. your code here
    }
  
  The ISO date format will always sort lexicographically, which means
  that our tweets appear in date/time order in our data store without
  any special work required on your part.
  
  In this exercise, you will need to use the `createReadStream()`
  method but you will need to restrict the range of entries to just the
  data you need, i.e. you must perform a "range query".
  
  By default, the range is the whole store, but you can narrow it down
  to a start and/or end key. For this exercise you want to start at
  a particular date and continue to the end of the store.
  
  Some of the power of range queries comes from the fact that your
  start and end keys need not even exist. If your start key does not
  exist then the data will start from the entry with a key that
  would come next in the sorted order.
  
  When you call `createReadStream()`, provide an options object with
  the property 'start'. The value of this property can simply be the
  original date string since YYYY-MM-DD is how the ISO format starts
  and this will make the ReadStream jump to the first key that begins
  with that prefix, i.e. the first tweet on that day.
  
    db.createReadStream({ start: '...' })...
  
  The rest of the solution will involve incrementing a counter for each
  'data' event you receive and then returning the total count as the
  second argument on the callback.
  */


}).call(this);
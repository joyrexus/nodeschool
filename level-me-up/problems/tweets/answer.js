// Generated by CoffeeScript 1.6.3
(function() {
  module.exports = function(db, date, done) {
    var range, tweets;
    tweets = [];
    range = {
      start: date,
      end: date + '\xff'
    };
    return db.createReadStream(range).on('data', function(d) {
      return tweets.push(d.value);
    }).on('error', function(e) {
      return done(e);
    }).on('end', function() {
      return done(null, tweets);
    });
  };

}).call(this);

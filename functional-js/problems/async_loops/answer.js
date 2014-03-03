(function() {
  module.exports = function(ids, load, done) {
    var seen, users;
    users = [];
    seen = 0;
    ids.forEach(function(id, i) {
      load(id, function(user) {
        users[i] = user;
        seen += 1;
        if (seen === ids.length) done(users)
      });
    });
  };
}).call(this);

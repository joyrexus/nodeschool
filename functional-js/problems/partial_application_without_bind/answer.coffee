logger = (prefix) ->
  (args...) ->
    console.log.apply null, [prefix].concat args

module.exports = logger

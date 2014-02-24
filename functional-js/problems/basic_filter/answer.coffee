isShort = (x) -> x.message.length < 50

module.exports = (messages) ->
  messages
    .filter(isShort)
    .map((x) -> x.message)

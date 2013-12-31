module.exports = (messages) ->
  isShort = (x) -> x.message.length < 50
  messages
    .filter(isShort)
    .map((x) -> x.message)

module.exports = (valid) ->
  isValid = (user) -> 
    valid.some (v) -> v.id is user.id
  (users) -> users.every isValid

slice = Function.call.bind(Array.prototype.slice)
      # (arr, from, to) -> arr.slice(from, to)

module.exports = slice


{deepEqual} = require 'assert'
eq = deepEqual

nums = [1..5]

# desired slicing
eq slice(nums, 0, 2), [1, 2]
eq slice(nums, 1, 2), [2]

# Reduce

Given an Array of strings, use Array.reduce to create an object that
contains the number of times each string occured in the array. Return the
object directly (no need to console.log).


## Example

```js

var inputWords = ['Apple', 'Banana', 'Apple', 'Durian', 'Durian', 'Durian']

console.log(countWords(inputWords))

// =>
// {
//   Apple: 2,
//   Banana: 1,
//   Durian: 3
// }

```

## Arguments

* `inputWords` - an array of random Strings.


## Conditions

* Do not use any for/while loops.
* Do not define additional functions unless a stub is provided 
  in the boilerplate.


## Boilerplate

```js

function countWords(inputWords) {
  // SOLUTION GOES HERE
}

module.exports = countWords

```

## Resources

* https://en.wikipedia.org/wiki/Reduce_(higher-order_function)
* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce

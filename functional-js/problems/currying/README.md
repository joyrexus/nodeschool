This is an example implementation of `curry3`, which curries up to 3 arguments:

```js

function curry3(fun){
  return function(three){
    return function(two){
      return function (one){
        return fun(one, two, three)
      }
    }
  }
}

```

If we were to use this implementation with this sample function:

```js

function abc(one, two, three) {
  return one/two/three
}

```

It would work like so:

```js

var curryC = curry3(abc)
var curryB = curryC(2)
var curryA = curryB(3)

console.log(curryA(6)) // => 1

```


## Task

In this challenge, we're going to implement a 'curry' function for an arbitrary number of arguments.

`curry` will take two parameters:

* `f`: The function we want to curry.
* `n`: Optional number of arguments to curry.
  If not supplied, `curry` should use the `f`'s arity as the value for `n`.


## Example

```js

function add3(one, two, three) {
  return one + two + three
}

var curryC = curry(add3)
var curryB = curryC(1)
var curryA = curryB(2)
console.log(curryA(3)) // => 6
console.log(curryA(10)) // => 13

console.log(curry(add3)(1)(2)(3)) // => 6
```


## Boilerplate 

```js

function curry(f, n) {
  // SOLUTION GOES HERE
}

module.exports = curry

```


## Hint

* You can detect the number of expected arguments to a function (it's arity)
  by checking a function's `length` property.

* See article [Manually specifying function arity](http://benalman.com/news/2012/09/partial-application-in-javascript/#manually-specifying-function-arity)

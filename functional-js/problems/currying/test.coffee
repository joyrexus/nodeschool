curry = require 'answer'
{ok} = require 'assert'

sumTriple = (a, b, c) -> a + b + c

ok curry(sumTriple)(1)(2)(3) is 6

curryC = curry sumTriple
curryB = curryC 1
curryA = curryB 2

ok curryA(3)  is 6
ok curryA(10) is 13

ok curry(sumTriple)(1)(2)(3)  is 6
ok curry(sumTriple)(1)(2)(10) is 13

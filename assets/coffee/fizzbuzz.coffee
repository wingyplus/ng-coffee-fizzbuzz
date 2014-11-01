class Fizzbuzz
  constructor: (@n) ->

  say: () ->
    if @n % 3 is 0
      'Fizz'
    else if @n % 5 is 0
      'Buzz'
    else
      '1'

window.ngfizzbuzz =
  Fizzbuzz: Fizzbuzz

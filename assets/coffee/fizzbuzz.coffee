class Fizzbuzz
  constructor: (@n) ->

  say: ->
    if @n % 3 is 0
      'Fizz'
    else if @n % 5 is 0
      'Buzz'
    else
      "#{@n}"

window.ngfizzbuzz =
  Fizzbuzz: Fizzbuzz

app = angular.module 'ngfizzbuzz', []
app.factory 'Fizzbuzz', -> Fizzbuzz

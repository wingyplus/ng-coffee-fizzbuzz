class Fizzbuzz
  constructor: (@n) ->

  say: ->
    if @n % 3 is 0
      'Fizz'
    else if @n % 5 is 0
      'Buzz'
    else
      "#{@n}"

class FizzbuzzController
  say: (n) ->
    new Fizzbuzz(n).say()

window.ngfizzbuzz =
  Fizzbuzz: Fizzbuzz

app = angular.module 'ngfizzbuzz', []
app.factory 'Fizzbuzz', -> Fizzbuzz
app.controller 'FizzbuzzController', FizzbuzzController

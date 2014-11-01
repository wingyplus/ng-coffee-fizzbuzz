class Fizzbuzz
  constructor: (@n) ->

  say: () ->
    "1"

describe 'Fizzbuzz', ->
  describe 'Service', ->
    it 'should be return "1" when input 1', ->
      f = new Fizzbuzz(1)
      expect(f.say()).toEqual "1"

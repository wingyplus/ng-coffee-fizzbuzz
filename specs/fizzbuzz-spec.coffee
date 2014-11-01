describe 'Fizzbuzz', ->
  it 'should be return "1" when input 1', ->
    f = new ngfizzbuzz.Fizzbuzz(1)
    expect(f.say()).toEqual '1'
  it 'should be return "Fizz" when input 3', ->
    f = new ngfizzbuzz.Fizzbuzz(3)
    expect(f.say()).toEqual 'Fizz'
  it 'should be return "Buzz" when input 5', ->
    f = new ngfizzbuzz.Fizzbuzz(5)
    expect(f.say()).toEqual 'Buzz'

  describe 'angular:factory', ->
    beforeEach module 'ngfizzbuzz'

    it 'should inject Fizzbuzz class from factory', inject (Fizzbuzz) ->
      expect(Fizzbuzz).not.toBeNull()
      expect(new Fizzbuzz(3).say()).toEqual 'Fizz'

  describe 'angular:controller', ->
    beforeEach module 'ngfizzbuzz'
    beforeEach inject ($controller) ->
      @controller = $controller 'FizzbuzzController', {}

    it 'should be "Fizz" when say 1', ->
      expect(@controller.say(1)).toEqual '1'

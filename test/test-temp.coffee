xexports = {}

xexports.UtilsTest =
  test: (test) ->
    a = {}
    a[{}] = true
    test.ok a.hasOwnProperty({a:1})
    test.strictEqual {a:1}.toString(), {}.toString()
    test.done()

  test2: (test) ->
    a = {}; a.toString = () -> 'a'
    b = {}; b.toString = () -> 'b'
    d = {}
    d[a] = 1
    test.ok not d.hasOwnProperty(b)
    test.done()

  test3: (test) ->
    class A
      @name: 'A'
      instanceName: 'instace_Of_A'
    a = new A()
    test.strictEqual a.constructor.name, 'A'
    test.strictEqual A.name, 'A'
    test.strictEqual a.name, undefined
    test.strictEqual a.instanceName, 'instace_Of_A'
    test.ok not A.instanceName?
    test.done()

  test4: (test) ->
    class A
      @name1: 'A'
      instanceName: 'instace_Of_A'
    class B extends A
    b = new B()
    test.strictEqual b.constructor.name, 'B'
    test.strictEqual b.constructor.name1, 'A'
    test.strictEqual b.instanceName, 'instace_Of_A'
    test.done()

  test5: (test) ->
    a = {}
    class a.A
    test.equal a.A.name, 'A'
    test.done()

  test: (test) ->
    a = {}; a.toString = -> 'dasf'
    b = {a:a}; b.toString = -> @a.toString()
    test.strictEqual "#{b}", 'dasf'
    test.done()

  test: (test) ->
    dict = require("../src/utils").dict
    x = dict([1,2], 1, [3,4],2)
    test.equal x([1,2]), 1
    test.equal x([3,4]), 1
    test.done()

exports.UtilsTest =
  test: (test) ->
    class A
      constructor: (@args...) ->
      new A([1,2]...)
    test.done()

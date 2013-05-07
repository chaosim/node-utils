global.I = require("../src/importer")
I.at "../src/set: set"

xexports = {}

exports.UtilsTest =
  test: (test) ->
    test.ok set([1,2]).has('2')
    test.ok set('ab').has('b')
    test.ok(set([1, 2]).union("ab").has('a'));
    test.ok(set([1, 2]).union({e:1, d:1}).has('e'));
    test.ok(set([1, 2]).union(set({e:1, d:1})).has('e'));

    test.done()


xexports.UtilsTest =
  test: (test) ->
    test.ok(set([1, 2]).union({e:1, d:1}).has('e'));
    test.done()

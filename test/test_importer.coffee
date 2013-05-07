I = require("../src/utils")

_ = require("underscore")

exports.UtilsTest =
  test: (test) ->
#    require "../src/solve"
    I.use "underscore: isString, isArray"
    test.ok(isString(''))
    [some, each] = I.from "underscore: some each"
    test.ok some([3,2], (x) -> x>1)
    I.at "underscore.first, underscore.last"
    test.equal (first [3,2]), 3
    test.equal (last [3,2]), 2
    test.done()

  "test all": (test) ->
    I.all "underscore underscore"
    test.ok(isString(''))
    test.ok some([3,2], (x) -> x>1)
    test.equal (first [3,2]), 3
    test.done()

  "test I.with_ names": (test) ->
    for name in I.split "isString, some, first", I.comman_space_splitter
      delete global[name]
    I.with_ _, " isString some",  ->
      test.ok(isString(''))
      test.ok some([3,2], (x) -> x>1)
      test.throws -> first [3,2]
    test.done()

  "test I.with_": (test) ->
    for name in I.split "isString, some, first",  I.comman_space_splitter
      delete global[name]
    I.with_ _, ->
      test.ok(isString(''))
      test.ok some([3,2], (x) -> x>1)
      test.equal (first [3,2]), 3
    test.done()
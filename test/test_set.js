// Generated by CoffeeScript 1.6.2
(function() {
  var xexports;

  global.I = require("../src/importer");

  I.at("../src/set: set");

  xexports = {};

  exports.UtilsTest = {
    test: function(test) {
      test.ok(set([1, 2]).has('2'));
      test.ok(set('ab').has('b'));
      test.ok(set([1, 2]).union("ab").has('a'));
      test.ok(set([1, 2]).union({
        e: 1,
        d: 1
      }).has('e'));
      test.ok(set([1, 2]).union(set({
        e: 1,
        d: 1
      })).has('e'));
      return test.done();
    }
  };

  xexports.UtilsTest = {
    test: function(test) {
      test.ok(set([1, 2]).union({
        e: 1,
        d: 1
      }).has('e'));
      return test.done();
    }
  };

}).call(this);

/*
//@ sourceMappingURL=test_set.map
*/

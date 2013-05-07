// Generated by CoffeeScript 1.6.2
(function() {
  var I, _;

  I = require("../src/utils");

  _ = require("underscore");

  exports.UtilsTest = {
    test: function(test) {
      var each, some, _ref;

      I.use("underscore: isString, isArray");
      test.ok(isString(''));
      _ref = I.from("underscore: some each"), some = _ref[0], each = _ref[1];
      test.ok(some([3, 2], function(x) {
        return x > 1;
      }));
      I.at("underscore.first, underscore.last");
      test.equal(first([3, 2]), 3);
      test.equal(last([3, 2]), 2);
      return test.done();
    },
    "test all": function(test) {
      I.all("underscore underscore");
      test.ok(isString(''));
      test.ok(some([3, 2], function(x) {
        return x > 1;
      }));
      test.equal(first([3, 2]), 3);
      return test.done();
    },
    "test I.with_ names": function(test) {
      var name, _i, _len, _ref;

      _ref = I.split("isString, some, first", I.comman_space_splitter);
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        name = _ref[_i];
        delete global[name];
      }
      return I.with_(_, " isString some", function() {
        test.ok(isString(''));
        test.ok(some([3, 2], function(x) {
          return x > 1;
        }));
        test.throws(function() {
          return first([3, 2]);
        });
        return test.done();
      });
    },
    "test I.with_": function(test) {
      var name, _i, _len, _ref;

      _ref = I.split("isString, some, first", I.comman_space_splitter);
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        name = _ref[_i];
        delete global[name];
      }
      I.with_(_, function() {
        test.ok(isString(''));
        test.ok(some([3, 2], function(x) {
          return x > 1;
        }));
        return test.equal(first([3, 2]), 3);
      });
      return test.done();
    }
  };

}).call(this);

/*
//@ sourceMappingURL=test_utils.map
*/

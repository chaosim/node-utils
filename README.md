
## Version:
0.1.0

Installation:
Just copy files in importer.js folder to your node.js project and import it with the require function. See included files for an example.

## usage
copy this file to your project and then:

```javascript
// javascript

I = require("imorter")

I.require_multiple("path/to/module1 path/to/module2")

I.use("underscore: isString, isArray")
I.at("underscore:first, underscore:last")
I.all("underscore and_other_module_path")

underscore = require("underscore")

I.with_(underscore, " isString some", function() {
    test.ok(isString(''));
    test.ok(some([3, 2], function(x) {
      return x > 1;
    }));
    test.throws(function() {
      return first([3, 2]);
    });
    return test.done();
  });

 I.with_(underscore, function() {
        test.ok(isString(''));
        test.ok(some([3, 2], function(x) {
          return x > 1;
        }));
        return test.equal(first([3, 2]), 3);
      });

I.set_global(obj, names)

// SEE test/test_importer.js for more information
 ```
```coffeescript
# coffeescript

I = require("impporter")

I.use "underscore: isString, isArray"

I.at "underscore:first, underscore:last"

I.all "underscore and_other_module_path"

I.require_multiple "path/to/module1 path/to/module2"

underscore = require "underscore"

I.with_ underscore, " isString some",  ->
  test.ok(isString(''))
  test.ok some([3,2], (x) -> x>1)
  test.throws -> first [3,2]

I.with_ underscore, ->
  test.ok(isString(''))
  test.ok some([3,2], (x) -> x>1)
  test.equal (first [3,2]), 3

I.set_global obj, names

# SEE test/test_importer.coffee for more information
```

## Bugs
Please report bugs to https://github.com/chaosim/node-utils/issues


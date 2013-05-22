exports.dict = (bindings...) -> result = {}; result[bindings[i]] = bindings[i+1] for i in [0...bindings.length] by 2; result

exports.assert = (arg,  message) -> unless arg then throw new dao.Error(message or '')

exports.times_string = (str, n) -> result = ''; result += str for i in [1..n]; result

exports.classeq = (x, y) -> x.constructor is y.constructor

exports.join = (sep, list) -> list.join(sep)

exports.isinstance = (x, klass) -> (x instanceof klass) # help to port python code

exports.toString = (x) -> x.toString() # help to port python code: replace str(x) with toString(x)
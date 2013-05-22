#####################################################################################
###

Author   : Caoxingming
Email    : simeon.chaos@gmail.com
Homepage : https://github.com/chaosim
Source   : https://github.com/chaosim/nodejs_utils
License  : Simplified BSD License
Version  : 0.1.0

Copyright 2013 Caoxingming. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY CAOXINGMING 'AS IS' AND ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
EVENT SHALL CAOXINGMING OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those
of the authors and should not be interpreted as representing official policies,
either expressed or implied, of Caoxingmingi.

###############################################################################
###
# usage: copy this file to your project and then:

# javascript:
new Set(data)
set(data)
  method: add, remove, keys, union, has.

# SEE test/test_set.js for more information

# in coffeescript:

new Set(data)
set(data)

method: add, remove, keys, union, has.

# SEE test/test_set.coffee for more information
######################################################################################_ = require "underscore"
_ = require "underscore"

Set = class exports.Set
  constructor: (data) ->
    if _.isString(data) or  _.isArray(data)
      @data = {}
      for x in data then @data[x] = true
    else @data = data or {}

  add: (key) ->  @data[key] = true
  remove: (key) -> delete @data[key]
  has: (key) -> @data.hasOwnProperty key
  isEmpty: ->
    for key of @data then return false  if @data.hasOwnProperty(key)
    true
  keys: -> k for k of @data
  clear: -> @data = {}
  union: (other) ->
    result = new Set()
    for x in @keys() then result.add(x)
    if _.isString(other) or _.isArray(other)
      for x in other then result.add(x)
    else if other instanceof Set
      for x in other.keys() then result.add(x)
    else for x of other then result.add(x)
    result
  unionAt: (other) ->
    if _.isString(other) or _.isArray(other)
      for x in other then @add(x)
    else if other instanceof Set
      for x in other.keys() then @add(x)
    else for x of other then @add(x)
    @

  copy: () -> new Set(@.keys())
  merge: (containers...) ->
    result = @copy()
    for x in containers
      result = result.union(x)
    return result
  mergeAt: (containers...) ->
    for x in containers
      @.unionAt(x)
    @

exports.set = (data) -> new Set(data)
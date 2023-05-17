; extends

["export"] @keyword.export
["default"] @keyword.default
["await"] @keyword.coroutine.await
["as"] @keyword.as

(this) @variable.builtin.this
(super) @variable.builtin.super
(undefined) @constant.builtin.undefined

((property_identifier) @constructor.constructor
    (#match? @constructor.constructor "^constructor$"))

((identifier) @number.infinity
    (#match? @number.infinity "^Infinity$"))

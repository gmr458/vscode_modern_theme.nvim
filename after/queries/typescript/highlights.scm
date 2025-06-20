; extends

["default"] @keyword.default
["await"] @keyword.coroutine.await
["as"] @keyword.operator.as
["=>"] @operator.arrow

(this) @variable.builtin.this
(super) @variable.builtin.super

((property_identifier) @constructor.constructor
    (#match? @constructor.constructor "^constructor$"))

((identifier) @number.infinity
    (#match? @number.infinity "^Infinity$"))

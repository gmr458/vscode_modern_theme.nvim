; extends

["await"] @keyword.coroutine.await
["break"] @keyword.break
["export"] @keyword.export

(super) @variable.builtin.super
(this) @variable.builtin.this

((property_identifier) @constructor.constructor
    (#match? @constructor.constructor "^constructor$"))

((identifier) @number.infinity
    (#match? @number.infinity "^Infinity$"))

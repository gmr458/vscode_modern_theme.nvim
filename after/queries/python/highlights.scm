; extends

; (class_definition
;     body: (block
;         (expression_statement
;             (assignment
;                 left: (attribute
;                     object: (identifier) @variable.builtin.self (#match? @variable.builtin.self "^self$")
;                 )
;             )
;         )
;     )
; )

; (class_definition
;     body: (block
;         (expression_statement
;             (call
;                 function: (attribute
;                     object: (identifier) @variable.builtin.self (#match? @variable.builtin.self "^self$")
;                 )
;             )
;         )
;     )
; )

(class_definition
    body: (block
        (function_definition
            parameters: (parameters
                (identifier) @variable.builtin.self (#match? @variable.builtin.self "^self$")
            )
        )
    )
)

(decorated_definition
    definition: (function_definition
        parameters: (parameters
            (identifier) @variable.builtin.self (#match? @variable.builtin.self "^self$")
        )
    )
)

; (class_definition
;     body: (block
;         (function_definition
;             body: (block
;                 (expression_statement
;                     (assignment
;                         left: (attribute
;                             object: (identifier) @variable.builtin.self (#match? @variable.builtin.self "^self$")
;                         )
;                     )
;                 )
;             )
;         )
;     )
; )

; (class_definition
;     body: (block
;         (function_definition
;             body: (block
;                 (expression_statement
;                     (call
;                         function: (attribute
;                             object: (identifier) @variable.builtin.self (#match? @variable.builtin.self "^self$")
;                         )
;                     )
;                 )
;             )
;         )
;     )
; )

(attribute
    object: (identifier) @variable.builtin.self (#match? @variable.builtin.self "^self$")
)

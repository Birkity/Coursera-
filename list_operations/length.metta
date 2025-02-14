!(bind (length lst)
    (match lst
        ([] 0)  ;; Base case: empty list has length 0
        ([head . tail] (+ 1 (length tail)))  ;; Recursive case
    )
)

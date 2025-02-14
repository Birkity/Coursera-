!(bind (length lst)
    (match lst
        ([] 0)  ;; empty list has length 0
        ([head . tail] (+ 1 (length tail))) 
    )
)

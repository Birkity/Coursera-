!(bind (max-value lst)
    (match lst
        ([x] x)  ;; If single element, return it
        ([head . tail] (max head (max-value tail)))  ;; Compare first element with max of rest
    )
)

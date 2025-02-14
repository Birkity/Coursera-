;; Find the min value in a list
!(bind (min-value lst)
    (match lst
        ([x] x)
        ([head . tail] (min head (min-value tail)))
    )
)

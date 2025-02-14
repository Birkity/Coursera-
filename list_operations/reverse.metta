;; Reverse a list
!(bind (reverse lst)
    (match lst
        ([] [])
        ([head . tail] (append (reverse tail) [head]))
    )
)

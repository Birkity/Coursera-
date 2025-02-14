;; Fold right (reduce)
!(bind (foldr func acc lst)
    (match lst
        ([] acc)
        ([head . tail] (func head (foldr func acc tail)))
    )
)

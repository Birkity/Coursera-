;; Fold left (reduce)
!(bind (foldl func acc lst)
    (match lst
        ([] acc)
        ([head . tail] (foldl func (func acc head) tail))
    )
)

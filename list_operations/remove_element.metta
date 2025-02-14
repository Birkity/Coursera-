;; Remove a specific element from a list
!(bind (remove-element elem lst)
    (match lst
        ([] [])
        ([head . tail] (if (= head elem) (remove-element elem tail) [head . (remove-element elem tail)]))
    )
)

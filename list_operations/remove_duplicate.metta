;; Remove duplicates from a list
!(bind (remove-duplicate lst)
    (match lst
        ([] [])
        ([head . tail] (if (is-member head tail) (remove-duplicate tail) [head . (remove-duplicate tail)]))
    )
)

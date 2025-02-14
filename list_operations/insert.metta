;; Insert an element into a sorted list
!(bind (insert elem lst)
    (match lst
        ([] [elem])
        ([head . tail] (if (< elem head) [elem . lst] [head . (insert elem tail)]))
    )
)

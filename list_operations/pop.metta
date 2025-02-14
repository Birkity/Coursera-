;;This function pop the first element from a list
!(bind (pop lst)
    (match lst
        ([] [])  ;; If empty, return empty
        ([head . tail] tail)  ;; Return the tail
    )
)

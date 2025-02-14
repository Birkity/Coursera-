;; Filter function
!(bind (filter pred lst)
    (match lst
        ([] [])
        ([head . tail] (if (pred head) [head . (filter pred tail)] (filter pred tail)))
    )
)

;; Map function
!(bind (map func lst)
    (match lst
        ([] [])
        ([head . tail] [(func head) . (map func tail)])
    )
)

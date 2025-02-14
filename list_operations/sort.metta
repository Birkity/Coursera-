;; Sort a list 
!(bind (sort lst)
    (match lst
        ([] [])
        ([head . tail] (insert head (sort tail)))
    )
)

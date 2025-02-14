;; Check if an element is a member of a list
!(bind (is-member elem lst)
    (match lst
        ([] false)
        ([head . tail] (or (= head elem) (is-member elem tail)))
    )
)

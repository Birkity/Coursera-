;; Append two lists
!(bind (append lst1 lst2)
    (match lst1
        ([] lst2)  ;; If first list is empty, return second list
        ([head . tail] [head . (append tail lst2)])  ;; Recursively append
    )
)

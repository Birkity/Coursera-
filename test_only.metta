;; Test cases for list operations

;; Test length function
!(length [1 2 3 4 5])  ;; Expected: 5

;; Test is-member function
!(is-member 3 [1 2 3 4 5])  ;; Expected: true
!(is-member 6 [1 2 3 4 5])  ;; Expected: false

;; Test append function
!(append [1 2 3] [4 5 6])  ;; Expected: [1 2 3 4 5 6]

;; Test max-value function
!(max-value [1 2 3 4 5])  ;; Expected: 5

;; Test min-value function
!(min-value [1 2 3 4 5])  ;; Expected: 1

;; Test push function
!(push 0 [1 2 3])  ;; Expected: [0 1 2 3]

;; Test pop function
!(pop [1 2 3])  ;; Expected: [2 3]

;; Test remove-element function
!(remove-element 2 [1 2 3 2 4])  ;; Expected: [1 3 4]

;; Test remove-duplicate function
!(remove-duplicate [1 2 2 3 4 4 5])  ;; Expected: [1 2 3 4 5]

;; Test map function
!(map (lambda (x) (* x 2)) [1 2 3 4 5])  ;; Expected: [2 4 6 8 10]

;; Test filter function
!(filter (lambda (x) (> x 2)) [1 2 3 4 5])  ;; Expected: [3 4 5]

;; Test foldl function
!(foldl + 0 [1 2 3 4 5])  ;; Expected: 15

;; Test foldr function
!(foldr + 0 [1 2 3 4 5])  ;; Expected: 15

;; Test reverse function
!(reverse [1 2 3 4 5])  ;; Expected: [5 4 3 2 1]

;; Test sort function
!(sort [3 1 4 1 5 9 2 6 5])  ;; Expected: [1 1 2 3 4 5 5 6 9]

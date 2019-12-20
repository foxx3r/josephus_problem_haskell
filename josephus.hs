-- f(n, k) where "n" is the number of people, and "k" is the jump
-- f(1, k) = 1
-- f(n, k) = (f(n - 1, k) + k - 1) % n + 1

f :: Int -> Int -> Int
f 1 _ = 1
f n k = (mod ((f (n - 1) k) + k - 1) n) + 1

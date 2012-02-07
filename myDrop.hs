-- reimplement the drop function
myDrop n xs = 
       if n <= 0 || null xs
       then xs
       else myDrop (n - 1) (tail xs)

-- oneline drop
mydrop n xs = if n <= 0 || null xs then xs else mydrop (n - 1) (tail xs)
module Main where

import Lib

main :: IO ()
main = someFunc

add :: (Integral a) => a -> a -> a
add 1 y = 0
add x y = x + y

getFirstThree :: (Integral a) => [a] -> a
getFirstThree (x : y : [])
 | x < 5 = x
 | x > 5 = y

f :: (Integral n) => n -> n
f 0 = 1
f n = n * f (n - 1)

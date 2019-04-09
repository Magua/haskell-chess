import Chess

main :: IO ()
main = do
  putStrLn "Testing chessboard "
  putStrLn (assert testChessboard "")

testChessboard :: Bool
testChessboard = do
  (show Chess.start) == "todo show chessboard"

assert :: Bool -> a -> a
assert False x = error "assertion failed!"
assert _     x = x
module Chess
    ( start
    ) where

import qualified Data.Char as C
import qualified Data.List as V

data PieceType =
             Pawn
           | Knight
           | Bishop
           | Rook
           | Queen
           | King
   deriving (Eq)

instance Show PieceType where
   show Pawn   = "p"
   show Knight = "n"
   show Bishop = "b"
   show Rook   = "r"
   show Queen  = "q"
   show King   = "k"

data Color =
    White | Black
    deriving Eq

data Piece = Piece Color PieceType
   deriving Eq

instance Show Piece where
   show (Piece White t) = map C.toUpper $ show t
   show (Piece Black t) = show t

data Position = Position
  {
    rank :: Int
   ,column :: Int
  }

data ChessBoard = ChessBoard {
  pieces :: [(Piece, Position)]
}

instance Show ChessBoard where
  show ps = "todo show chessboard"

start :: ChessBoard
start = ChessBoard {pieces=[]}
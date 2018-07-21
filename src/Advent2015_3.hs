module Advent2015_3 where

import Protolude
import Data.HashMap.Lazy as M

data InfiniteGrid = Cell
    {  xPos :: Int
    ,   yPos :: Int
    ,   visits :: Int
    }   deriving(Show)

--data Moves = Initial | North |

mapTest = M.map
--testGrid = map (\(x, y) -> Cell x y 0) [(x, y) | x <- [1..25], y <- [1..10]]


module Advent2015_3 where

import Protolude
import Data.Maybe
import Data.HashMap.Lazy (HashMap)
import qualified Data.HashMap.Lazy as Map

data State s a = State { exec :: s -> (a, s) }


data Direction = None | North | East | South | West deriving(Show, Enum)

--instance Ord Direction

--instance State Direction where
--    exec d

mapDirectionToMove :: Direction -> Key
mapDirectionToMove d = case d of
    None -> (0, 0)
    North -> (0, 1)
    East -> (1, 0)
    South -> (0, -1)
    West -> (-1, 0)

data Move
    = Reset { initial :: Key } --Initial move, resets visits
    | Normal { current :: Key, direction :: Direction }
    deriving(Show)

type    XPos = Int
type    YPos = Int
type    Key = (XPos, YPos)
type    Visits = Int
type    Grid = HashMap Key Visits

generateKeys :: [(Key, Visits)]
generateKeys = [((x, y), 0) | x <- [1..], y <- [1..]]

updateVisits :: Key -> Grid -> Grid
--updateVisits = undefined
updateVisits key grid = Map.insertWith (\x y -> (y+1)) key v grid
    where   lkv = Map.lookup key grid
            v = fromMaybe 0 lkv


--move :: Move -> Key
move (Reset _) = Reset { initial = (0, 0) }
move m = undefined


moveLoop :: [Direction] -> [Key]
moveLoop [] = []
moveLoop d = map mapDirectionToMove d



mapTest = Map.fromList generateKeys
--testGrid = map (\(x, y) -> Cell x y 0) [(x, y) | x <- [1..25], y <- [1..10]]

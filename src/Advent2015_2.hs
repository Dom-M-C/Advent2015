module Advent2015_2 where

import Prelude

data PresentDim = Dim Int Int Int
    | Width
    | Height
    | Length
    deriving(Show)


getDim :: PresentDim -> PresentDim -> Int
getDim Width (Dim x _ _) = x
getDim Height (Dim _ x _) = x
getDim Length (Dim _ _ x) = x

presentArea :: PresentDim -> PresentDim
presentArea x =
    let l = getDim Length x
        w = getDim Width x
        h = getDim Height x
    in  Dim (2*l*w )  (2*w*h)   (2*h*l)

sumSides :: PresentDim -> Int
sumSides x =
    let l = getDim Length x
        w = getDim Width x
        h = getDim Height x
    in l + w + h + (min (min l w) h)

--findTotal :: [PresentDim] -> Int
findTotal ps = foldl (presentArea) (Dim 0 0 0) ps

{-|
Module      : Lib
Description : Lib's main module

This is a haddock comment describing your library
For more information on how to write Haddock comments check the user guide:
<https://www.haskell.org/haddock/doc/html/index.html>
-}
module Lib
    ( someFunc
    ) where

import Lib.Prelude

import Advent2015_3

ad3f :: InfiniteGrid -> Int
ad3f _ = 1

-- | Prints someFunc
--
-- >>> someFunc 10
-- someFunc
someFunc :: IO ()
someFunc = do
    putStrLn ("Enter input" :: Text)
    line <- getLine
    print line
    --floors line

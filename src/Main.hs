module Main where

import GiveYouAHead 
import System.Environment

main :: IO()
main = do
        args <- getArgs
        gyahMain args
        return ()

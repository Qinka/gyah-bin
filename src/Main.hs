module Main where

import GiveYouAHead 
import System.Environment
import System.IO.Extra

main :: IO()
main = do
        args<- getArgs
        gyahMain args
        let x = if length args >=1 then args !! 0 else "help"
        if x == "help" then do
                putStrLn $ unlines [
                        "\tgyah-bin version 0.2.2.0",
                        "\tgyah-bin 版本 0.2.2.0",
                        "",
                        "\tHomepage https://github.com/Qinka/gyah-bin/",
                        "\tBug report: https://github.com/Qinka/gyah-bin/issues",
                        "\t主页  https://github.com/Qinka/gyah-bin/",
                        "\tBUG报告  https://github.com/Qinka/gyah-bin/issues",
                        ""
                    ]
            else putStr ""
        return ()

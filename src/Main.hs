module Main where

import GiveYouAHead
import System.Environment
import System.IO.Extra
import Data.Version


gyabbin'ver :: Version
gyabbin'ver = Version { versionBranch = [0,2,2,3], versionTags =[] }
gyabbinver = showVersion gyabbin'ver

main :: IO()
main = do
        args<- getArgs
        gyahMain args
        let x = if length args >=1 then args !! 0 else "help"
        if x == "help" then do
                putStrLn $ unlines [
                        "\tgyah-bin version " ++ gyabbinver,
                        "\tgyah-bin 版本 " ++ gyabbinver,
                        "",
                        "\tHomepage https://github.com/Qinka/gyah-bin/",
                        "\tBug report: https://github.com/Qinka/gyah-bin/issues",
                        "\t主页  https://github.com/Qinka/gyah-bin/",
                        "\tBUG报告  https://github.com/Qinka/gyah-bin/issues",
                        "",
                        "Uploaded to Hackage",
                        "已上传到 Hackage",
                        ""
                    ]
            else putStr ""
        return ()

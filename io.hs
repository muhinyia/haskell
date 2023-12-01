
{-
main :: IO()
main = print "Hello Muhinyia wa Ndegwa! Push on son"
-}
import Data.Char
{-

main =  do
    putStrLn "What's your name?"
    myName <- getLine
    let bigName = map toUpper myName
    putStrLn $ "Hello " ++ myName ++ " welcome aboard"
    putStrLn $ "Your Name in caps is "++bigName

    -}

main :: IO ()
main = do
    line <- getLine
    if null line
        then return ()
    else do
        putStrLn $ reverseWords line
        main

reverseWords = unwords . map reverse .words
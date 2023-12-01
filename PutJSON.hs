module PutJSIN where

import Data.List (intercalate)
import CustomJSON

renderJValue :: JValue -> String
renderJValue (JString s) = show s
renderJValue (JNumber n) = show n
renderJValue (JBool True) = show "true"
renderJValue (JBool False) = show "false"
renderJValue JNull = "null"

renderJValue (JObject o) = "{" ++ pairs o ++ "}"
     where pairs [] =""
           pairs ps = intercalate ", "(map renderPair ps)
           renderPair (k, v) = show k  ++ ": " ++ renderJValue v 

renderJValue (JArray a) = "[" ++ values a ++ "]"
     where values [] = ""
           values vs = intercalate ", " (map renderJValue vs)


--printing
putJValue :: JValue -> IO ()
putJValue v = putStrLn (renderJValue v)
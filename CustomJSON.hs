module CustomJSON
(
  JValue (..),
  getString,
  getInt,
  getNumber,
  getBool,
  getObject,
  getArray,
  isNull

)
where
-- the JValue type for a JSON object
data JValue = JString String
              | JNumber Double 
              | JBool Bool 
              | JNull 
              | JObject [(String, JValue)] 
              | JArray [JValue] 
                deriving (Eq, Ord, Show)


{- How can we get a value from the object?

accessors 

If the its a JValue, Myabe return it else nothing
-}
getString :: JValue -> Maybe String
getString (JString s) = Just s
getString _ = Nothing

getInt::JValue -> Maybe Int
getInt (JNumber n) = Just (truncate n)
getInt _ = Nothing

getNumber :: JValue -> Maybe Double
getNumber (JNumber n) = Just n
getNumber _ = Nothing

getBool :: JValue -> Maybe Bool
getBool (JBool b) = Just b
getBool _ = Nothing

getObject :: JValue -> Maybe [(String, JValue)]
getObject (JObject o) = Just o
getObject _ = Nothing

getArray :: JValue -> Maybe [JValue]
getArray (JArray a) = Just a
getArray _ = Nothing

isNull :: JValue -> Bool
isNull v = v == JNull 


{-
Error Handling


-}
-- data Maybe a = Nothing | Just a -- this is how Mybe is defined in Prelude
-- safeTail :: [a] -> Maybe a 
safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (_:xs) = Just xs
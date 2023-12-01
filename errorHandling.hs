{- function to return the second last element in a list
 But supposing we give a list with only one element, we would get into problems
 We need to handle errors
-}

secondLast xs = if null xs || null (tail xs) then error "List too short" 
                else 
                    if length xs==2 
                        then head xs
                    else secondLast  (tail xs)


-- Or better use Maybe type to contain errors

secondLast' xs | null xs = Nothing
               | null (tail xs) = Nothing
               | length xs == 2 = Just (head xs)
               | otherwise = secondLast' (tail xs)

               
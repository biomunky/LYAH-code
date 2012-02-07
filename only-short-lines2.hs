-- rather than using the getContents function
-- and mapping over every line use a shortcut:
-- INTERACT

main = interact shortLinesOnly
shortLinesOnly :: String -> String
shortLinesOnly = unlines . filter (\l -> length l < 10) . lines
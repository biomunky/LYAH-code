import Data.List

value = "ATOM"

matchAtom :: String -> ([String], Int)
matchAtom x
	| "ATOM"   `isPrefixOf` x = ( "foo" : ["it's an atom"], 1) 
	| "SEQRES" `isPrefixOf` x = ( "bar" : ["it's a seqres"], 0)
	| otherwise               = ( "wee" : ["it's something else"], 2)


main = do
	let (a, b) = (matchAtom value)
	print a
	print b
	print (matchAtom "FAIL")
	print (matchAtom "COKE")



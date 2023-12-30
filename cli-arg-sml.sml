val _ =
    let
	val name = CommandLine.name ()
	val args = CommandLine.arguments ()
					 
	val length = length args
    in
	if length = 2
	then
	    let
		val args' = Array.fromList args

		val min = valOf (Int.fromString (Array.sub (args', 0)))
		val max = valOf (Int.fromString (Array.sub (args', 1)))

		val gen = Random.newgen ()
		val random = Random.range (min, max) gen
	    in
		print ("Random = " ^ Int.toString random ^ "\n")
	    end
	else
	    print ("Usage = " ^ name ^ " [min] [max]\n")
    end

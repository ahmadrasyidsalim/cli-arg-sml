val _ =
    let
	fun getVal array index =
	    valOf (Int.fromString (Array.sub (array, index)))
	
	val name = CommandLine.name ()
	val args = CommandLine.arguments ()
					 
	val length = length args
    in
	if length = 2
	then
	    let
		val args = Array.fromList args

		val min = getVal args 0
		val max = getVal args 1

		val gen = Random.newgen ()
		val random = Random.range (min, max) gen
	    in
		print ("Random = " ^ Int.toString random ^ "\n")
	    end
	else
	    print ("Usage = " ^ name ^ " [min] [max]\n")
    end

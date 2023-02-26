code generator
generateDoUntilEnd: aMorph 

	| cond id |
	cond := aMorph blockArgs first argString: parser.
	id := aMorph labelId.
	self doUntilEnd: cond id: id
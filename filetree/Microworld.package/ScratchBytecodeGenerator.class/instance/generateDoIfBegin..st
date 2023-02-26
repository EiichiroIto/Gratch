code generator
generateDoIfBegin: aMorph

	| cond id |
	cond := aMorph blockArgs first argString: parser.
	id := self doIfBegin: cond.
	aMorph labelId: id
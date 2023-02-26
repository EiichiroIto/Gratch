code generator
generateDoRepeatBegin: aMorph

	| num labels |
	num := aMorph blockArgs first argString: parser.
	labels := self doRepeatBegin: num.
	aMorph labelId: labels
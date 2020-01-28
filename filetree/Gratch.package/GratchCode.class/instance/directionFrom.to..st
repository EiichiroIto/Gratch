sensing ops
directionFrom: n1 to: n2
	^ bcGenerator
		directionFrom: [n1 argString: parser]
		to: [n2 argString: parser]
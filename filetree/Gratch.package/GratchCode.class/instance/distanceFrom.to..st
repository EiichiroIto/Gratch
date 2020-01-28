sensing ops
distanceFrom: n1 to: n2
	^ bcGenerator
		distanceFrom: [n1 argString: parser]
		to: [n2 argString: parser]
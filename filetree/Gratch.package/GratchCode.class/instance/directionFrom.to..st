sensing ops
directionFrom: n1 to: n2
	^ generator
		directionFrom: [n1 argString: parser]
		to: [n2 argString: parser]
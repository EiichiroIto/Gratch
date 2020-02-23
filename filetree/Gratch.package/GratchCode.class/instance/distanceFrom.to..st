sensing ops
distanceFrom: n1 to: n2
	^ generator
		distanceFrom: [n1 argString: parser]
		to: [n2 argString: parser]
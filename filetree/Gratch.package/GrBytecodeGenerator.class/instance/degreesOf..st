sensing ops
degreesOf: node

	self appendValue: (node argString: parser).
	self appendSymbol: #degreesOf.
	^ nil
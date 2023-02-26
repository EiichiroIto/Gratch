sensing ops
edgeTo: node

	self appendSymbol: #getId.
	self appendValue: (node argString: parser).
	self appendSymbol: #edgeFromTo.
	^ nil
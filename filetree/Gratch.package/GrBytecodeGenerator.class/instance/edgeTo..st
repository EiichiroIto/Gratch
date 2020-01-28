sensing ops
edgeTo: num
	self appendSymbol: #getId.
	self appendValue: num.
	self appendSymbol: #edgeFromTo.
	^ nil
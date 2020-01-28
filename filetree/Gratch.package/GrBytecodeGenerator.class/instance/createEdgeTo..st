basic ops
createEdgeTo: anInteger
	self nullaryCommand: #getId.
	self appendValue: anInteger.
	self appendSymbol: #createEdgeFromTo
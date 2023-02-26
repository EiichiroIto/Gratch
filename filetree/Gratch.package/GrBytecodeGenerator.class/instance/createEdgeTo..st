basic ops
createEdgeTo: anInteger

	self nullaryCommand: #getId.
	self appendValue: [ anInteger argString: parser ].
	self appendSymbol: #createEdgeFromTo
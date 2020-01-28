test
testDefaultEdgeColumns
	| w ret |
	w := self newWriter.
	ret := w defaultEdgeColumns.
	self assert: ret isArray.
	self assert: ret size equals: 5.
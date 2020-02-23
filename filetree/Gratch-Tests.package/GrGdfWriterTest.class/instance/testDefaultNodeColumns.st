test
testDefaultNodeColumns
	| w ret |
	w := self newWriter.
	ret := w defaultNodeColumns.
	self assert: ret isArray.
	self assert: ret size equals: 7.
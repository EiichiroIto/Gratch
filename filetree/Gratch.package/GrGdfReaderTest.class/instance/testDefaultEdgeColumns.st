test
testDefaultEdgeColumns
	| r |
	r := self newReader.
	self assert: r defaultEdgeColumns isArray
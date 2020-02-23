test
testIgnoreEdgeColumns
	| r |
	r := self newReader.
	self assert: r ignoreEdgeColumns isArray
test
testIgnoreNodeColumns
	| r |
	r := self newReader.
	self assert: r ignoreNodeColumns isArray
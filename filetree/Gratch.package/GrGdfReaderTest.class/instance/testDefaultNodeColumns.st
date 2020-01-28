test
testDefaultNodeColumns
	| r |
	r := self newReader.
	self assert: r defaultNodeColumns isArray
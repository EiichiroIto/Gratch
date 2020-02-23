test
testPrivColumns
	| r |
	r := self newReader.
	self assert: r privColumns isCollection.
	self assert: r privColumns isEmpty.
	r privColumns: #(1 2 3).
	self assertCollection: r privColumns equals: #(1 2 3).
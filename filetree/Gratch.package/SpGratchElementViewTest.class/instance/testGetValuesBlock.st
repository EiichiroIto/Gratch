test
testGetValuesBlock
	| v |
	v := self newView.
	self assert: v getValuesBlock isNil.
	v getValuesBlock: 123.
	self assert: v getValuesBlock equals: 123.
	v getValuesBlock: #((a b) (c d)).
	v updateTable.
	self assertCollection: v values equals: #((a b) (c d)).
	v getValuesBlock: nil.
	v updateTable.
	self assertCollection: v values equals: #()
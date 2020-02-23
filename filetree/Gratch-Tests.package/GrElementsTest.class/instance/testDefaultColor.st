test
testDefaultColor
	| ts |
	ts := self newElements.
	self assert: (ts defaultColor between: 1 and: 140).
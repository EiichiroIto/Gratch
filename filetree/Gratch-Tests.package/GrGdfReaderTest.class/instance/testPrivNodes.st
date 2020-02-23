test
testPrivNodes
	| r d |
	r := self newReader.
	self assert: r privNodes isDictionary.
	self assert: r privNodes isEmpty.
	d := Dictionary new.
	r privNodes: d.
	self assert: r privNodes equals: d
test
testIsBooleanReporter

	| obj |
	obj := self newObj.
	self deny: obj isBooleanReporter.
	obj type: #isBooleanReporter.
	self assert: obj isBooleanReporter
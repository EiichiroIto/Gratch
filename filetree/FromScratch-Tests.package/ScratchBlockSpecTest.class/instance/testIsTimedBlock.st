test
testIsTimedBlock

	| obj |
	obj := self newObj.
	self deny: obj isTimedBlock.
	obj type: #isTimedBlock.
	self assert: obj isTimedBlock
test
testDontClose

	| obj |
	obj := self newObj.
	self deny: obj dontClose.
	obj dontClose: true.
	self assert: obj dontClose.
	obj dontClose: false.
	self deny: obj dontClose
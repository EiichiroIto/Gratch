test
testAtPut

	| obj |
	obj := self newObj.
	obj at: #dontClose put: false.
	self deny: obj dontClose.
	obj at: #dontClose put: true.
	self assert: obj dontClose
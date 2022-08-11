test
testAt

	| obj |
	obj := self newObj.
	self deny: (obj at: #dontClose).
	obj dontClose: true.
	self assert: (obj at: #dontClose)
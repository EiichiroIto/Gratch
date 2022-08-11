test
testResizable

	| obj |
	obj := self newObj.
	self assert: obj resizable.
	obj resizable: true.
	self assert: obj resizable.
	obj resizable: false.
	self deny: obj resizable
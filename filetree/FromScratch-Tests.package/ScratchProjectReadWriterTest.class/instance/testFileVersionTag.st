test
testFileVersionTag

	| obj |
	obj := self newObj.
	self assert: obj fileVersionTag isNil.
	obj fileVersionTag: 'Test'.
	self assert: obj fileVersionTag equals: 'Test'
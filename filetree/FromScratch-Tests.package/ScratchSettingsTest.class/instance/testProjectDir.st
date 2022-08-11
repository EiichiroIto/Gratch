test
testProjectDir

	| obj |
	obj := self newObj.
	self assert: obj projectDir isEmpty.
	obj projectDir: 'abc'.
	self assert: obj projectDir equals: 'abc'
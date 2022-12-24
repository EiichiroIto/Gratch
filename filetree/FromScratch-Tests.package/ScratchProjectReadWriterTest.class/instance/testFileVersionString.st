test
testFileVersionString

	| obj |
	obj := self newObj.
	obj fileVersion: 5.
	obj fileVersionTag: 'Test'.
	self assert: obj fileVersionString equals: 'Test05'
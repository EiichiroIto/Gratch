test
testFileVersion

	| obj |
	obj := self newObj.
	self assert: obj fileVersion isNil.
	obj fileVersion: 123.
	self assert: obj fileVersion equals: 123
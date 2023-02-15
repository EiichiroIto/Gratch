test
testPrintOn

	| obj s |
	obj := self newObj.
	s := WriteStream on: String new.
	obj printOn: s.
	self assert: s contents equals: 'ScratchBlockSeparator'
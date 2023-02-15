test
testPrintOn

	| obj s |
	obj := self newObj.
	s := WriteStream on: String new.
	obj printOn: s.
	self assert: s contents equals: 'ScratchBlockSpec(nil,nil,nil)'.
	obj label: 'abc'.
	obj type: 'r'.
	obj selector: #def.
	s := WriteStream on: String new.
	obj printOn: s.
	self assert: s contents equals: 'ScratchBlockSpec(abc,r,def)'
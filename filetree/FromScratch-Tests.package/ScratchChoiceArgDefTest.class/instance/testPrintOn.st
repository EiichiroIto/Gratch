test
testPrintOn

	| obj s |
	obj := self newObj.
	s := WriteStream on: String new.
	obj printOn: s.
	self assert: s contents equals: 'ScratchChoiceArgDef()'.
	obj arg: $a.
	s := WriteStream on: String new.
	obj printOn: s.
	self assert: s contents equals: 'ScratchChoiceArgDef(%a)'.
	obj options: #( a b c ).
	s := WriteStream on: String new.
	obj printOn: s.
	self assert: s contents equals: 'ScratchChoiceArgDef(%a,3)'
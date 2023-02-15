test
testAddChoiceArgDef

	| obj def r |
	obj := self newBuilder.
	self assert: obj dict isEmpty.
	def := ScratchChoiceArgDef new
		       arg: $a;
		       options: #( abc def ).
	obj addChoiceArgDef: def.
	self assert: obj dict size equals: 1.
	r := obj dict at: $a.
	self assert: (r isKindOf: BlockClosure).
	self assert: (r value isKindOf: StaticChoiceArgMorph).
	self assert: r value choice equals: ''.
	self assertCollection: r value options equals: #( abc def )
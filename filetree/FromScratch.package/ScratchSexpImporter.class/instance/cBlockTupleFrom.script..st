private
cBlockTupleFrom: anArray script: aScript
	| tuple innerBlock |
	tuple := anArray copy.
	tuple at: 1 put: (tuple at: 1) asSymbol.
	2 to: tuple size - 1 do: [ :each | 
		| arg |
		arg := tuple at: each.
		arg isArray
			ifTrue: [ arg := self tupleFrom: arg script: aScript.
				tuple at: each put: arg ] ].
	innerBlock := tuple at: tuple size.
	innerBlock := innerBlock isEmpty
		ifTrue: [ nil ]
		ifFalse: [ innerBlock collect: [ :each | self tupleFrom: each script: aScript ] ].
	tuple at: tuple size put: innerBlock.
	^ tuple
accessing
bytecode
	^ codes
		collect: [ :each | 
			each isSymbol
				ifTrue: [ GrNativeThread indexOfSymbol: each ]
				ifFalse: [ each ] ]
accessing
arrayFor: id size: size
	| classSymbol |
	classSymbol := (IDToClassEntry at: id) second.
	classSymbol = #Array ifTrue: [ ^ Array new: size ].
	classSymbol = #FloatArray ifTrue: [ ^ Float32Array new: size ].
	classSymbol = #Float32Array ifTrue: [ ^ Float32Array new: size ].
	classSymbol = #IntegerArray ifTrue: [ ^ IntegerArray new: size ].
	self error: 'Invalid Array'
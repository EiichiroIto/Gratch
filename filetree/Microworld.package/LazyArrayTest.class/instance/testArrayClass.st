test
testArrayClass
	| l |
	l := LazyArray basicNew.
	l className: #Float32Array.
	self assert: l arrayClass equals: Float32Array.
	l := LazyArray basicNew.
	l className: #ByteArray.
	self assert: l arrayClass equals: ByteArray.
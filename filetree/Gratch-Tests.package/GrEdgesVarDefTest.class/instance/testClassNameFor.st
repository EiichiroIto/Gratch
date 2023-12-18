test
testClassNameFor
	| pv v |
	pv := self newVarDef.
	self assert: (pv classNameFor: 'flag') equals: #ByteArray.
	self assert: (pv classNameFor: 'color') equals: #ByteArray.
	self assert: (pv classNameFor: 'n1') equals: #IntegerArray.
	self assert: (pv classNameFor: 'n2') equals: #IntegerArray.
	v := pv addVariable: 'abc'.
	self assert: (pv classNameFor: 'abc') equals: #Float32Array.
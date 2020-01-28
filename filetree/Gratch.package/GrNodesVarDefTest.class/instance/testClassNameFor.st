test
testClassNameFor
	| pv v |
	pv := self newVarDef.
	self assert: (pv classNameFor: 'color') equals: #ByteArray.
	self assert: (pv classNameFor: 'flag') equals: #ByteArray.
	self assert: (pv classNameFor: 'x') equals: #FloatArray.
	self assert: (pv classNameFor: 'y') equals: #FloatArray.
	v := pv addVariable: 'abc'.
	self assert: (pv classNameFor: 'abc') equals: #FloatArray.
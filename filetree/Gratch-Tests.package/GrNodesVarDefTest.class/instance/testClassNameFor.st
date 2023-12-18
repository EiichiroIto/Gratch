test
testClassNameFor
	| pv v |
	pv := self newVarDef.
	self assert: (pv classNameFor: 'color') equals: #ByteArray.
	self assert: (pv classNameFor: 'flag') equals: #ByteArray.
	self assert: (pv classNameFor: 'x') equals: #Float32Array.
	self assert: (pv classNameFor: 'y') equals: #Float32Array.
	v := pv addVariable: 'abc'.
	self assert: (pv classNameFor: 'abc') equals: #Float32Array.
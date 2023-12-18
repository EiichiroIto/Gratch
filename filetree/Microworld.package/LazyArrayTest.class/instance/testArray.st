test
testArray
	| a |
	a := self newArray: #Float32Array.
	self assert: a array class equals: Float32Array.
	self assert: a array size equals: 0.
	a at: 10 put: 1.
	self assert: a array class equals: Float32Array.
	self assert: a array size equals: 100.
	self assert: (a array at: 10) equals: 1
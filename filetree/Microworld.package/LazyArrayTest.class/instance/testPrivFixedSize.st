test
testPrivFixedSize
	| l |
	l := LazyArray className: #Float32Array.
	self assert: l fixedSize isNil.
	l privFixedSize: 10.
	self assert: l fixedSize equals: 10.
	l privFixedSize: 20.
	self assert: l fixedSize equals: 20.
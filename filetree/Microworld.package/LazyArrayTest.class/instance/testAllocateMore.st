test
testAllocateMore
	| l |
	l := LazyArray className: #Float32Array.
	l allocateMore: 10.
	self assert: (l privArray isKindOf: Float32Array).
	self assert: l privArray size equals: l defaultAllocationSize.
	l allocateMore: 10.
	self assert: (l privArray isKindOf: Float32Array).
	self assert: l privArray size equals: l defaultAllocationSize * 2.
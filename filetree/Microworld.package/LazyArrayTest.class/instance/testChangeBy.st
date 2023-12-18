test
testChangeBy
	| l |
	l := LazyArray className: #Float32Array.
	l at: 1 put: 10.
	l at: 2 put: 20.
	l at: 3 put: 30.
	self assert: (l at: 1) equals: 10.
	self assert: (l at: 2) equals: 20.
	self assert: (l at: 3) equals: 30.
	l changeBy: 2.
	self assert: (l at: 1) equals: 12.
	self assert: (l at: 2) equals: 22.
	self assert: (l at: 3) equals: 32
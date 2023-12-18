test
testReset
	| l |
	l := LazyArray className: #Float32Array.
	self assert: l privArray isNil.
	l at: 1 put: 1.
	self assert: l privArray notNil.
	l reset.
	self assert: l privArray isNil.
	l at: 1 put: 1.
	self assert: l privArray notNil.
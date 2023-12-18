test
testIsEmpty
	| l |
	l := LazyArray className: #Float32Array.
	self assert: l isEmpty.
	l at: 1 put: 2.
	self deny: l isEmpty.
	l reset.
	self assert: l isEmpty.
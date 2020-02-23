test
testGetValueOf
	| v |
	v := self newView.
	self assert: (v getValueOf: #(a b)) equals: 'b'.
	self assert: (v getValueOf: #(c d)) equals: 'd'
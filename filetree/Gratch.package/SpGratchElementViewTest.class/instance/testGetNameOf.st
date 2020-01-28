test
testGetNameOf
	| v |
	v := self newView.
	self assert: (v getNameOf: #(a b)) equals: 'a'.
	self assert: (v getNameOf: #(c d)) equals: 'c'
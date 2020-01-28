test
testColorAt
	| ps |
	ps := self newNodes.
	ps colorAt: 1 put: 0.
	ps colorAt: 2 put: 1.
	ps colorAt: 3 put: 0.
	ps colorAt: 4 put: 2.
	self assert: (ps colorAt: 1) equals: 0.
	self assert: (ps colorAt: 2) equals: 1.
	self assert: (ps colorAt: 3) equals: 0.
	self assert: (ps colorAt: 4) equals: 2.
test
testVarAt
	| br a |
	br := self newBreed.
	a := br addVariable: 'a'.
	br variables forceSize: 2.
	br var: a at: 1 put: 1.
	br var: a at: 2 put: 3.
	self assert: ((br variables privVars at: a) at: 1) equals: 1.
	self assert: ((br variables privVars at: a) at: 2) equals: 3.
	self assert: (br var: a at: 1) equals: 1.
	self assert: (br var: a at: 2) equals: 3.
	br var: a at: 1 put: 5.
	br var: a at: 2 put: 2.
	self assert: ((br variables privVars at: a) at: 1) equals: 5.
	self assert: ((br variables privVars at: a) at: 2) equals: 2.
	self assert: (br var: a at: 1) equals: 5.
	self assert: (br var: a at: 2) equals: 2
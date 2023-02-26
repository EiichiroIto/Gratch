test
testPut

	| m |
	m := self newMorph.
	m screenSize: 4 @ 3.
	m cursor: 1 @ 0.
	m put: 'abcde
fg'.
	self assert: m screen first equals: ' abc'.
	self assert: m screen second equals: 'de'.
	self assert: m screen third equals: 'fg'.
	m put: 'ab'.
	self assert: m screen first equals: 'de'.
	self assert: m screen second equals: 'fgab'.
	self assert: m screen third equals: ''
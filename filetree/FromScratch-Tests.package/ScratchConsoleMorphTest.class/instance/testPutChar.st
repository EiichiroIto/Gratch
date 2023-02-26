test
testPutChar

	| m |
	m := self newMorph.
	m screenSize: 4 @ 3.
	m cursor: 1 @ 0.
	m putChar: $a.
	m putChar: $b.
	m putChar: $c.
	m putChar: $d.
	m putChar: $e.
	self assert: m screen first equals: ' abc'.
	self assert: m screen second equals: 'de'.
	self assert: m screen third equals: ''.
	m cursor: 2 @ 2.
	m putChar: $A.
	m putChar: $B.
	m putChar: $C.
	self assert: m screen first equals: 'de'.
	self assert: m screen second equals: '  AB'.
	self assert: m screen third equals: 'C'
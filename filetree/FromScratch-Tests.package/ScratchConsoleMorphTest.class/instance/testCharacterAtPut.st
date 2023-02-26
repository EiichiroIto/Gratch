test
testCharacterAtPut

	| m |
	m := self newMorph.
	m characterAt: 0 @ 0 put: $a.
	self assert: m screen first equals: 'a'.
	m characterAt: 1 @ 1 put: $b.
	self assert: m screen second equals: ' b'.
	m characterAt: 3 @ 2 put: $c.
	self assert: m screen third equals: '   c'.
	m characterAt: 4 @ 2 put: $d.
	self assert: m screen third equals: '   cd'.
	m characterAt: 2 @ 2 put: $e.
	self assert: m screen third equals: '  ecd'
test
testCharacterAt

	| m |
	m := self newMorph.
	m screenSize: 4 @ 3.
	m screen at: 1 put: 'abcd'.
	m screen at: 2 put: 'efgh'.
	m screen at: 3 put: 'ijkl'.
	self assert: (m characterAt: 0 @ 0) equals: $a.
	self assert: (m characterAt: 3 @ 0) equals: $d.
	self assert: (m characterAt: 1 @ 1) equals: $f.
	self assert: (m characterAt: 2 @ 1) equals: $g.
	self assert: (m characterAt: 0 @ 2) equals: $i.
	self assert: (m characterAt: 3 @ 2) equals: $l.
	self assert: (m characterAt: 4 @ 0) equals: Character space.
	self assert: (m characterAt: -1 @ 0) equals: Character space.
	self assert: (m characterAt: 0 @ -1) equals: Character space.
	self assert: (m characterAt: 0 @ 3) equals: Character space
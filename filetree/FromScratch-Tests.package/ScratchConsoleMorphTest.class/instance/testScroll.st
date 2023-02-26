test
testScroll

	| m |
	m := self newMorph.
	m screenSize: 4 @ 3.
	m screen at: 1 put: 'abcd'.
	m screen at: 2 put: 'efgh'.
	m screen at: 3 put: 'ijkl'.
	m scroll: 0.
	self assert: (m screen at: 1) equals: 'abcd'.
	self assert: (m screen at: 2) equals: 'efgh'.
	self assert: (m screen at: 3) equals: 'ijkl'.
	m scroll: 1.
	self assert: (m screen at: 1) equals: 'efgh'.
	self assert: (m screen at: 2) equals: 'ijkl'.
	self assert: (m screen at: 3) equals: ''.
	m scroll: 2.
	self assert: (m screen at: 1) equals: ''.
	self assert: (m screen at: 2) equals: ''.
	self assert: (m screen at: 3) equals: ''.
	
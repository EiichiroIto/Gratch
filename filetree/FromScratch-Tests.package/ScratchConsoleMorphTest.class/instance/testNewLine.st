test
testNewLine

	| m |
	m := self newMorph.
	m screenSize: 4 @ 3.
	m screen at: 1 put: 'abcd'.
	m screen at: 2 put: 'efgh'.
	m screen at: 3 put: 'ijkl'.
	m cursor: 2 @ 0.
	m newLine.
	self assert: m screen first equals: 'ab'.
	self assert: m screen second equals: 'efgh'.
	m newLine.
	self assert: m screen second equals: ''.
	m cursor: 3 @ 2.
	m newLine.
	self assert: m screen first equals: ''.
	self assert: m screen second equals: 'ijk'.
	self assert: m screen third equals: ''
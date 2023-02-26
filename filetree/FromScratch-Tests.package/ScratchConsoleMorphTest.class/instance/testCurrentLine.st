test
testCurrentLine

	| m |
	m := self newMorph.
	m screenSize: 4 @ 3.
	m screen at: 1 put: 'abcd'.
	m screen at: 2 put: 'efgh'.
	m screen at: 3 put: 'ijkl'.
	self assert: m currentLine equals: 'abcd'.
	m cursor: 1 @ 1.
	self assert: m currentLine equals: 'efgh'.
	m cursor: 3 @ 2.
	self assert: m currentLine equals: 'ijkl'.
	m currentLine: 'aaaa'.
	self assert: m currentLine equals: 'aaaa'
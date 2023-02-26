test
testClearScreen

	| m |
	m := self newMorph.
	m screenSize: 4 @ 3.
	m screen at: 1 put: 'abcd'.
	m screen at: 2 put: 'efgh'.
	m screen at: 3 put: 'hijk'.
	self deny: m screen first isEmpty.
	self deny: m screen second isEmpty.
	self deny: m screen third isEmpty.
	m clearScreen.
	self assert: m screen first isEmpty.
	self assert: m screen second isEmpty.
	self assert: m screen third isEmpty
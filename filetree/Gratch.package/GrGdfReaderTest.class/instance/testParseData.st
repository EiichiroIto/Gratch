test
testParseData
	| r ret |
	r := self newReader.
	r privColumns: #(1 2 3 4 5 6 7).
	ret := r
		parseData: 's9,''Visual Works'',4,4,288.0,301.0,''203,255,153'''.
	self assert: ret isCollection.
	self assert: ret size equals: 7.
	self assert: (ret at: 1) first equals: 1.
	self assert: (ret at: 1) second equals: 's9'.
	self assert: (ret at: 2) first equals: 2.
	self assert: (ret at: 2) second equals: 'Visual Works'.
	self assert: (ret at: 3) first equals: 3.
	self assert: (ret at: 3) second equals: '4'.
	self assert: (ret at: 4) first equals: 4.
	self assert: (ret at: 4) second equals: '4'.
	self assert: (ret at: 5) first equals: 5.
	self assert: (ret at: 5) second equals: '288.0'.
	self assert: (ret at: 6) first equals: 6.
	self assert: (ret at: 6) second equals: '301.0'.
	self assert: (ret at: 7) first equals: 7.
	self assert: (ret at: 7) second equals: '203,255,153'
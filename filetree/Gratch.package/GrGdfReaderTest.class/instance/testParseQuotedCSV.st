test
testParseQuotedCSV
	| r ret |
	r := self newReader.
	ret := r
		parseQuotedCSV: 's9,''Visual Works'',4,4,288.0,301.0,''203,255,153'''.
	self assert: ret isCollection.
	self assert: ret size equals: 7.
	self assert: (ret at: 1) equals: 's9'.
	self assert: (ret at: 2) equals: 'Visual Works'.
	self assert: (ret at: 3) equals: '4'.
	self assert: (ret at: 4) equals: '4'.
	self assert: (ret at: 5) equals: '288.0'.
	self assert: (ret at: 6) equals: '301.0'.
	self assert: (ret at: 7) equals: '203,255,153'
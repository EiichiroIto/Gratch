test
testStatisticsNoOf

	| gen |
	gen := self newGenerator.
	self
		assert: (gen statisticsNoOf: 'sum')
		equals: GrCommandId sumCommandNo.
	self
		assert: (gen statisticsNoOf: 'average')
		equals: GrCommandId averageCommandNo.
	self
		assert: (gen statisticsNoOf: 'max')
		equals: GrCommandId maxCommandNo.
	self
		assert: (gen statisticsNoOf: 'min')
		equals: GrCommandId minCommandNo.
	self
		assert: (gen statisticsNoOf: 'id with largest')
		equals: GrCommandId maxElementCommandNo.
	self
		assert: (gen statisticsNoOf: 'id with smallest')
		equals: GrCommandId minElementCommandNo.
	self assert: (gen statisticsNoOf: 'xxx') equals: 0
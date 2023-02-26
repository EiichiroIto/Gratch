test
testColorRandom

	| obj thread r |
	100 timesRepeat: [ 
		obj := self newGenerator.
		obj colorRandom.
		thread := self newThread.
		thread codes: obj code.
		r := thread evaluate: 1.
		self assert: (r between: 0 and: ColorList colors size - 1) ]
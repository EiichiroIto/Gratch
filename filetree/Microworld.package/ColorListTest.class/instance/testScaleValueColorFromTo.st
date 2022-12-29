test
testScaleValueColorFromTo
	| br c |
	br := ColorList.
	c := br scaleValue: 0 color: 35 from: 0 to: 0.
	self assert: c equals: ColorList black.
	c := br scaleValue: 0 color: 35 from: 1 to: 9.
	self assert: c equals: ColorList black.
	c := br scaleValue: 10 color: 35 from: 1 to: 9.
	self assert: c equals: ColorList white.
	c := br scaleValue: 5 color: 35 from: 1 to: 9.
	self assert: c equals: 34.
	c := br scaleValue: 1 color: 35 from: 1 to: 9.
	self assert: c equals: 30.
	c := br scaleValue: 9 color: 35 from: 1 to: 9.
	self assert: c equals: 39.

	c := br scaleValue: 10 color: 35 from: 9 to: 1.
	self assert: c equals: ColorList black.
	c := br scaleValue: 0 color: 35 from: 9 to: 1.
	self assert: c equals: ColorList white.
	c := br scaleValue: 5 color: 35 from: 9 to: 1.
	self assert: c equals: 34.
	c := br scaleValue: 1 color: 35 from: 9 to: 1.
	self assert: c equals: 39.
	c := br scaleValue: 9 color: 35 from: 9 to: 1.
	self assert: c equals: 30.
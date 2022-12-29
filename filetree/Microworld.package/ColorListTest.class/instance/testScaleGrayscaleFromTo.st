test
testScaleGrayscaleFromTo
	| br c |
	br := ColorList.
	c := br scaleGrayscale: 0 from: 0 to: 0.
	self assert: c equals: 0.
	c := br scaleGrayscale: 0 from: 0 to: 100.
	self assert: c equals: 0.
	c := br scaleGrayscale: 100 from: 0 to: 100.
	self assert: c equals: 255.
	c := br scaleGrayscale: 50 from: 0 to: 100.
	self assert: c equals: 127.
	c := br scaleGrayscale: -1 from: 0 to: 100.
	self assert: c equals: 0.
	c := br scaleGrayscale: 101 from: 0 to: 100.
	self assert: c equals: 255.
	c := br scaleGrayscale: -1 from: 100 to: 0.
	self assert: c equals: 255.
	c := br scaleGrayscale: 101 from: 100 to: 0.
	self assert: c equals: 0
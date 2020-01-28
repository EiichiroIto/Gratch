test
testNearestColor
	| c |
	c := self newColorList.
	self assert: (c nearestColor: Color black) equals: ColorList black.
	self assert: (c nearestColor: Color white) equals: ColorList white.
	self assert: (c nearestColor: Color red) equals: ColorList red.
	self assert: (c nearestColor: Color green) equals: ColorList green.
	self assert: (c nearestColor: Color blue) equals: ColorList blue.
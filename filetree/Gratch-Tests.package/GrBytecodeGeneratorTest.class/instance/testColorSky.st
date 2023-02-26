test
testColorSky

	| obj r |
	obj := self newGenerator.
	r := obj colorSky.
	self assert: r equals: ColorList sky
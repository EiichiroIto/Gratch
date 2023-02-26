test
testColorTurquoise

	| obj r |
	obj := self newGenerator.
	r := obj colorTurquoise.
	self assert: r equals: ColorList turquoise
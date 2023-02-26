test
testColorPurple

	| obj r |
	obj := self newGenerator.
	r := obj colorPurple.
	self assert: r equals: ColorList purple
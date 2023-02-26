test
testColorOrange

	| obj r |
	obj := self newGenerator.
	r := obj colorOrange.
	self assert: r equals: ColorList orange
test
testColorCyan

	| obj r |
	obj := self newGenerator.
	r := obj colorCyan.
	self assert: r equals: ColorList cyan
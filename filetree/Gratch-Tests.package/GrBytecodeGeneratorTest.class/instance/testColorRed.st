test
testColorRed

	| obj r |
	obj := self newGenerator.
	r := obj colorRed.
	self assert: r equals: ColorList red
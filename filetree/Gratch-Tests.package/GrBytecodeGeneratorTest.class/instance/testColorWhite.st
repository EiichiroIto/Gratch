test
testColorWhite

	| obj r |
	obj := self newGenerator.
	r := obj colorWhite.
	self assert: r equals: ColorList white
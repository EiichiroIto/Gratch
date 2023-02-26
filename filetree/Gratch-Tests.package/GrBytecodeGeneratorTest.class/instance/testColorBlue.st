test
testColorBlue

	| obj r |
	obj := self newGenerator.
	r := obj colorBlue.
	self assert: r equals: ColorList blue
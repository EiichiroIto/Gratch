test
testColorYellow

	| obj r |
	obj := self newGenerator.
	r := obj colorYellow.
	self assert: r equals: ColorList yellow
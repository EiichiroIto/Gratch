test
testColorLime

	| obj r |
	obj := self newGenerator.
	r := obj colorLime.
	self assert: r equals: ColorList lime
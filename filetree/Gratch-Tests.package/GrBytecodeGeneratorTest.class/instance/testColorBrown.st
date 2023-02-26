test
testColorBrown

	| obj r |
	obj := self newGenerator.
	r := obj colorBrown.
	self assert: r equals: ColorList brown
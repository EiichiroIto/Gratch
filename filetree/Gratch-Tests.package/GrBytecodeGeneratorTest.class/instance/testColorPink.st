test
testColorPink

	| obj r |
	obj := self newGenerator.
	r := obj colorPink.
	self assert: r equals: ColorList pink
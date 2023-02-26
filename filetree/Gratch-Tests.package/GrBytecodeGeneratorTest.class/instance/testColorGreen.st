test
testColorGreen

	| obj r |
	obj := self newGenerator.
	r := obj colorGreen.
	self assert: r equals: ColorList green
test
testColorGray

	| obj r |
	obj := self newGenerator.
	r := obj colorGray.
	self assert: r equals: ColorList gray
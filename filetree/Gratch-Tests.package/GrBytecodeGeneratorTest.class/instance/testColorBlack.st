test
testColorBlack

	| obj r |
	obj := self newGenerator.
	r := obj colorBlack.
	self assert: r equals: ColorList black
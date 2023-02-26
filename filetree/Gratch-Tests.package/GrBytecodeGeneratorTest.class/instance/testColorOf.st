test
testColorOf

	| obj r |
	obj := self newGenerator.
	r := obj colorOf: #black.
	self assert: r equals: ColorList black.
	r := obj colorOf: #white.
	self assert: r equals: ColorList white
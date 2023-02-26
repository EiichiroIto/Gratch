test
testColorMagenta

	| obj r |
	obj := self newGenerator.
	r := obj colorMagenta.
	self assert: r equals: ColorList magenta
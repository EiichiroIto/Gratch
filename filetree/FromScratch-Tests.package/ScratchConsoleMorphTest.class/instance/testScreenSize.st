test
testScreenSize

	| m |
	m := self newMorph.
	self assert: m screenSize equals: m defaultScreenSize.
	m screenSize: 10 @ 20.
	self assert: m screenSize equals: 10 @ 20
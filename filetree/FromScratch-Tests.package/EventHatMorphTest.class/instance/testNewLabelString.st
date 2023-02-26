test
testNewLabelString

	| obj |
	obj := self newMorph.
	self assert: (obj newLabelString isKindOf: StringMorph)
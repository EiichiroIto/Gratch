test
testLabelId

	| b x |
	b := self newGenerator.
	self assert: (b labelId isKindOf: BaseId).
	x := BaseId new.
	self deny: b labelId identicalTo: x.
	b labelId: x.
	self assert: b labelId identicalTo: x
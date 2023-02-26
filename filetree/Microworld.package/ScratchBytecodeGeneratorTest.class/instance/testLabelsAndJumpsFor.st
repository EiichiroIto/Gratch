test
testLabelsAndJumpsFor
	| b arr |
	b := self newGenerator.
	b appendLabel: b labelId newNo.
	b appendValue: 1.
	b appendValue: 2.
	b appendLabel: b labelId newNo.
	b appendSymbol: #a.
	b appendLabel: b labelId newNo.
	b appendValue: 2.
	b appendSymbol: #a withJump: 1.

	arr := b labelsAndJumpsFor: b stream contents.

	self assertCollection: arr first equals: #(1 5 6).
	self assert: arr second size equals: 1.
	self assert: arr second first selector equals: #a.
	self assert: b address equals: 13.
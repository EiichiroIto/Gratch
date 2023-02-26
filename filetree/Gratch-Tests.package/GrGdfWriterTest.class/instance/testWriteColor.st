test
testWriteColor
	| w |
	w := self newWriter.
	w writeColor: Color black.
	self assert: w stream contents equals: '''0,0,0'''.
	w := self newWriter.
	w writeColor: Color white.
	self assert: w stream contents equals: '''255,255,255'''.
	w := self newWriter.
	w writeColor: Color red.
	self assert: w stream contents equals: '''255,0,0'''.
	w := self newWriter.
	w writeColor: Color green.
	self assert: w stream contents equals: '''0,255,0'''.
	w := self newWriter.
	w writeColor: Color blue.
	self assert: w stream contents equals: '''0,0,255'''.
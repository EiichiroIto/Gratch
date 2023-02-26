test
testScript

	| b x |
	b := self newGenerator.
	self assert: b script isNil.
	x := ScratchScript new.
	b script: x.
	self assert: b script identicalTo: x
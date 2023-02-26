test
testStream

	| b x |
	b := self newGenerator.
	self assert: b stream isStream.
	x := WriteStream on: String new.
	self deny: b stream identicalTo: x.
	b stream: x.
	self assert: b stream identicalTo: x
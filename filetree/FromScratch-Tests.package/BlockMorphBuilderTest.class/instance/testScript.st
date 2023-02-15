test
testScript

	| obj s |
	obj := self newBlockMorphBuilder.
	self assert: obj script isNil.
	s := self newScript.
	obj script: s.
	self assert: obj script identicalTo: s
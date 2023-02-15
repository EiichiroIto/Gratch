test
testArgMorphBuilder

	| obj a |
	obj := self newScript.
	self assert: obj argMorphBuilder isNil.
	a := ArgMorphBuilder new.
	obj argMorphBuilder: a.
	self assert: obj argMorphBuilder identicalTo: a
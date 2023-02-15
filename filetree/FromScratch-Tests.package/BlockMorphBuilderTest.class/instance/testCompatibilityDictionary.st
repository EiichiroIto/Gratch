test
testCompatibilityDictionary

	| obj a |
	obj := self newBlockMorphBuilder.
	self assert: obj compatibilityDictionary isNil.
	a := Dictionary new.
	obj compatibilityDictionary: a.
	self assert: obj compatibilityDictionary identicalTo: a
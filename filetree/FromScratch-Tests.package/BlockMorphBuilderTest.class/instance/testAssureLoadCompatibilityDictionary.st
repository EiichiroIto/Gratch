test
testAssureLoadCompatibilityDictionary

	| obj |
	obj := self newBlockMorphBuilder.
	self assert: obj compatibilityDictionary isNil.
	obj assureLoadCompatibilityDictionary.
	self assert: obj compatibilityDictionary isDictionary
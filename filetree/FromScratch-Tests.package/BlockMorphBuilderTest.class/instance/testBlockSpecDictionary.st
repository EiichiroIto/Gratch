test
testBlockSpecDictionary

	| obj a |
	obj := self newBlockMorphBuilder.
	self assert: obj blockSpecDictionary isDictionary.
	self assert: obj blockSpecDictionary isEmpty.
	a := Dictionary new.
	obj blockSpecDictionary: a.
	self assert: obj blockSpecDictionary identicalTo: a
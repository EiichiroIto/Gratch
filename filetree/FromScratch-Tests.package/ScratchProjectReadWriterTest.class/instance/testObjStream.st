test
testObjStream

	| obj x |
	obj := self newObj.
	self assert: obj objStream isNil.
	x := ObjStream new.
	obj objStream: x.
	self assert: obj objStream identicalTo: x
test
testCountAlive
	| ps |
	ps := GrNodes new.
	ps create: 5.
	self assert: ps countAlive equals: 5.
	ps create: 10.
	self assert: ps countAlive equals: 15.
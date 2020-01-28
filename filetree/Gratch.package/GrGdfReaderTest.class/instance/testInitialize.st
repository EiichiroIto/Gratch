test
testInitialize
	| r |
	r := GrGdfReader basicNew.
	self assert: r privState isNil.
	self assert: r privColumns isNil.
	r initialize.
	self assert: r privState isNil.
	self assert: r privColumns isCollection.
	self assert: r privColumns isEmpty.
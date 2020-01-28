test
testPrivState
	| r w |
	r := self newReader.
	self assert: r privState isNil.
	r privState: #abc.
	self assert: r privState equals: #abc.
	r privState: #def.
	self assert: r privState equals: #def.
test
testPrivMode
	| m |
	m := self newManipulator.
	self assert: m privMode isNil.
	m privMode: #abc.
	self assert: m privMode equals: #abc.
	m privMode: #def.
	self assert: m privMode equals: #def.
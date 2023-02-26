test
testScreen

	| m a |
	m := self newMorph.
	self assert: m screen isArray.
	a := Array with: 'abc' with: 'def'.
	m screen: a.
	self assert: m screen identicalTo: a
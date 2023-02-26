test
testLivingOnesDo

	| g r |
	g := self newGraph.
	r := OrderedCollection new.
	g livingOnesDo: [ :each | r add: g ].
	self assert: r isCollection.
	self assert: r size equals: 1.
	self assert: r first identicalTo: g
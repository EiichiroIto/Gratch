accessing nodes
createNodes: anInteger
	| list bounds |
	bounds := self graphBounds.
	list := self nodes create: anInteger.
	list
		do: [ :each | 
			self xAt: each put: ((bounds left to: bounds right) atRandom: random).
			self
				yAt: each
				put: ((bounds top to: bounds bottom) atRandom: random) ].
	^ list
microworld
degreesAt: index
	| d |
	d := 0.
	self
		livingOnesDo: [ :each | 
			(self var: GrEdgesVarDef n1VarNo at: each) = index
				ifTrue: [ d := d + 1 ].
			(self var: GrEdgesVarDef n2VarNo at: each) = index
				ifTrue: [ d := d + 1 ] ].
	^ d
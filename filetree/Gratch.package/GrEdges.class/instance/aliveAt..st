accessing variable
aliveAt: anInteger
	(self var: GrEdgesVarDef n1VarNo at: anInteger) = 0
		ifTrue: [ ^ false ].
	(self var: GrEdgesVarDef n2VarNo at: anInteger) = 0
		ifTrue: [ ^ false ].
	^ true
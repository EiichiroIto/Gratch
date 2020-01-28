microworld
isConnected: anInteger from: n1 to: n2
	| nn1 nn2 |
	nn1 := self var: GrEdgesVarDef n1VarNo at: anInteger.
	nn2 := self var: GrEdgesVarDef n2VarNo at: anInteger.
	(nn1 = n1 and: [ nn2 = n2 ])
		ifTrue: [ ^ true ].
	(nn1 = n2 and: [ nn2 = n1 ])
		ifTrue: [ ^ true ].
	^ false
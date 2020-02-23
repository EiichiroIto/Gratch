instance creation
newWriter: aWorld
	^ GrGdfWriter new
		privGrWorld: aWorld;
		yourself
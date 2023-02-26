instance creation
newWriter: aWorld
	^ GrGdfWriter new
		grWorld: aWorld;
		yourself
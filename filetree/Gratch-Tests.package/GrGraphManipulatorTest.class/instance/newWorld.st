instance creation
newWorld
	| w |
	w := GrNativeWorld new.
	w addBreed: (GrGraph new grWorld: w).
	w addBreed: (GrNodes new breedNo: GrBreedId nodesBreedNo).
	w addBreed: (GrEdges new breedNo: GrBreedId edgesBreedNo).
	^ w
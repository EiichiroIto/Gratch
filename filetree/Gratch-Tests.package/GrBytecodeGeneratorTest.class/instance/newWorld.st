private
newWorld

	| w |
	w := GrNativeWorld new.
	w addBreed: (GrGraph new grWorld: w).
	w addBreed: GrNodes new.
	w addBreed: GrEdges new.
	^ w
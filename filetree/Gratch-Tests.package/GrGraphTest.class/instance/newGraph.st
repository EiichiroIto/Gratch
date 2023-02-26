instance creation
newGraph
	| w g |
	w := GrNativeWorld new.
	g := GrGraph new.
	g grWorld: w.
	^ g
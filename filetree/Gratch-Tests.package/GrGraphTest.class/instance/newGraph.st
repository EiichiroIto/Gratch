instance creation
newGraph
	| w g |
	w := GrNativeWorld new.
	g := w newGraph.
	g grWorld: w.
	^ g
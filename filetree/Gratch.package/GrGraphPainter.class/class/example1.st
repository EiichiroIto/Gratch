examples
example1
	| w d c f |
	w := GrNativeWorld new.
	w addBreed: (GrGraph new grWorld: w).
	w addBreed: (GrNodes new breedNo: GrBreedId nodesBreedNo).
	w addBreed: (GrEdges new breedNo: GrBreedId edgesBreedNo).
	w createNodes: 10.
	1 to: 9 do: [ :each | w createEdgeFrom: each to: each + 1 ].
	f := Form extent: 200 @ 200 depth: 32.
	c := FormCanvas on: f.
	d := self new.
	d grWorld: w.
	d graphRect: w graphRectangle.
	d expandGraphRect.
	d canvas: c.
	d screenRect: (0 @ 0 corner: 200 @ 200).
	d bgColor: Color white.
	d setupNodeCache: w allNodes.
	d setupEdgeCache.
	d drawNodes.
	d drawEdges.
	d inspect.
	f inspect
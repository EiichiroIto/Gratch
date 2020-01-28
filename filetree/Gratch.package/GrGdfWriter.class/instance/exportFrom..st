accessing
exportFrom: aWorld
	grWorld := aWorld.
	stream := WriteStream on: ''.
	self
		exportNodes;
		exportEdges.
	^ stream contents
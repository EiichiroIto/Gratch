drawing
drawEdges

	edgeCache do: [ :each | 
		canvas line: each first to: each second color: each third.
		self
			drawEdgeLabels: each fourth
			at: each first + each second // 2 ]
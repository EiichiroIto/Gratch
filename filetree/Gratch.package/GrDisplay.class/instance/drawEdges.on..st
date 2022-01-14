drawing
drawEdges: aCollection on: aCanvas
	aCollection
		do: [ :each | 
			aCanvas
				line: each first
				to: each second
				color: each third.
			self
				drawLabels: each fourth
				at: (each first + each second) // 2 + self edgeLabelOffset
				on: aCanvas ]
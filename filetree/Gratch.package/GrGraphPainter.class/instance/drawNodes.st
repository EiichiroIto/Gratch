drawing
drawNodes
	nodeCache
		do: [ :each | 
			canvas
				fillOval: each first
				color: each second
				borderWidth: 1
				borderColor: Color black.
			self
				drawLabels: each third
				at: each first center + self nodeLabelOffset ]
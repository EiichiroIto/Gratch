drawing
drawNodes: aCollection on: aCanvas
	aCollection
		do: [ :each | 
			aCanvas
				fillOval: each fourth
				color: each second
				borderWidth: 0
				borderColor: Color red.
			self
				drawLabels: each third
				at: each first + self nodeLabelOffset
				on: aCanvas ]
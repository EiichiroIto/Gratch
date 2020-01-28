drawing
drawNodes: aCollection on: aCanvas
	| rect c |
	aCollection
		do: [ :each | 
			rect := self nodeRectangleCenterAt: each first.
			c := ColorList colorAt: each second.
			aCanvas
				fillOval: rect
				color: c
				borderWidth: self nodeBorderWidth
				borderColor: c darker.
			self drawLabels: each third at: (each first + self nodeLabelOffset) on: aCanvas ]
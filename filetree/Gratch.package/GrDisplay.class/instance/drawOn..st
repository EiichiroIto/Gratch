drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	grWorld ifNil: [ ^ self ].
	painter canvas: aCanvas.
	painter screenRect: self bounds.
	painter setupCache: grWorld allNodes.
	painter drawGraph.
	painter drawHighlightNode: highlightNode color: self highlightColor.
	painter drawHighlightEdge: highlightEdge color: self highlightColor.
	self drawDraggingEdgeOn: aCanvas.
	self drawInfoOn: aCanvas
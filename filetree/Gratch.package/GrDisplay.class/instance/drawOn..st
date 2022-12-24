drawing
drawOn: aCanvas

	| nodes |
	super drawOn: aCanvas.
	grWorld ifNil: [ ^ self ].
	nodes := grWorld allNodes.
	nodes ifEmpty: [ self clearHighlights ].
	painter canvas: aCanvas.
	painter screenRect: self bounds.
	painter setupCache: nodes.
	painter drawGraph.
	painter drawHighlightNode: highlightNode color: self highlightColor.
	painter drawHighlightEdge: highlightEdge color: self highlightColor.
	self drawDraggingEdgeOn: aCanvas.
	self drawInfoOn: aCanvas
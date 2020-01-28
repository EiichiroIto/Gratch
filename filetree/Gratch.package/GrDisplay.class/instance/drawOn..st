drawing
drawOn: aCanvas
	| nodes edges |
	super drawOn: aCanvas.
	grWorld ifNil: [ ^ self ].
	nodes := self nodeDict.
	edges := self edgeListOf: nodes.
	self drawEdges: edges on: aCanvas.
	self drawNodes: nodes on: aCanvas.
	self drawHighlightsOn: aCanvas.
	self drawInfoOn: aCanvas
private
graphFormExtent: aPoint
	| painter scale extent form canvas |
	painter := GrGraphPainter new.
	painter bgColor: Color white.
	painter grWorld: grWorld.
	painter graphRect: grWorld graphRectangle.
	painter expandGraphRect.
	painter nodeLabels: project nodes labelNos.
	painter edgeLabels: project edges labelNos.
	scale := painter graphRect extent scaleTo: aPoint.
	extent := (painter graphRect extent * scale) rounded.
	extent := extent - (5 @ 10).
	painter screenRect: (0 @ 0 extent: extent).
	painter setupCache: grWorld allNodes.
	form := Form extent: extent + (5 @ 10) depth: 32.
	canvas := FormCanvas on: form.
	canvas fillColor: Color white.
	painter canvas: canvas.
	painter drawGraph.
	^ form
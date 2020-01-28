private
addNodeAt: aPoint
	| p list |
	p := grDisplay worldPointToGraph: aPoint.
	list := grWorld nodesCenter: p distance: 10.
	list isEmpty ifFalse: [ ^ self ].
	list := grWorld createNodes: 1.
	grWorld pointAt: list first put: p.
	grDisplay changed.
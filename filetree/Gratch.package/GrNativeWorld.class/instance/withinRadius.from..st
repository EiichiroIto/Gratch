accessing nodes
withinRadius: r from: n
	| p list |
	p := self pointAt: n.
	list := self nodesCenter: p distance: r.
	list := list copyWithout: n.
	list isEmpty
		ifTrue: [ ^ 0 ].
	^ list atRandom
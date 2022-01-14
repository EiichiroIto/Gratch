accessing nodes
nearestNodeAt: aPoint within: aNumber
	| n p |
	n := self nearestNodeAt: aPoint except: 0.
	n = 0
		ifTrue: [ ^ 0 ].
	p := self pointAt: n.
	(aPoint - p) r > aNumber
		ifTrue: [ ^ 0 ].
	^ n
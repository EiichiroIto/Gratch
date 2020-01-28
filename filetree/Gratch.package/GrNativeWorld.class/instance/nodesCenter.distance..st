accessing nodes
nodesCenter: aPoint distance: aNumber
	^ self nodes
		withLivingOnesSelect: [ :each :nodes | 
			| p |
			p := nodes pointAt: each.
			(p - aPoint) r <= aNumber ]
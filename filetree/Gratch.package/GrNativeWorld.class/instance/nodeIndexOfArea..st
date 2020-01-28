accessing nodes
nodeIndexOfArea: aRectangle
	^ self nodes
		withLivingOnesSelect: [ :id :nodes | aRectangle containsPoint: (nodes pointAt: id) ]
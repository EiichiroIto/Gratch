accessing nodes
nearestNodeFrom: anInteger
	| p |
	p := self nodes pointAt: anInteger.
	^ self nearestNodeAt: p except: anInteger
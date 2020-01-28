private
addEdgeAt: aPoint
	| n |
	node ifNil: [ ^ self ].
	n := self nodeAt: aPoint.
	n = 0
		ifTrue: [ ^ self ].
	grWorld createEdgeFrom: node to: n.
	grDisplay changed
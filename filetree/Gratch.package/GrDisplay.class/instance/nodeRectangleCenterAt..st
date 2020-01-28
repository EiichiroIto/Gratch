private
nodeRectangleCenterAt: aPoint
	| h |
	h := self nodeExtent // 2.
	^ (aPoint - h) corner: (aPoint + h)
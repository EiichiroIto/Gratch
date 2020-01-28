private
setupDragNodeAt: aPoint
	| n |
	n := self nodeAt: aPoint.
	node := n = 0
		ifTrue: [ nil ]
		ifFalse: [ n ]
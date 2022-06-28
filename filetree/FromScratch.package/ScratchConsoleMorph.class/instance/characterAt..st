private
characterAt: aPoint

	| line |
	(self withinScreen: aPoint) ifFalse: [ ^ Character space ].
	line := screen at: aPoint y + 1.
	aPoint x >= line size ifTrue: [ ^ Character space ].
	^ line at: aPoint x + 1
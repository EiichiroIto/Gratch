event handling
mouseWheel: event

	| v |
	v := owner vScrollPixels.
	event isUp ifTrue: [ owner vScrollPixels: v - 5 ].
	event isDown ifTrue: [ owner vScrollPixels: v + 5 ]
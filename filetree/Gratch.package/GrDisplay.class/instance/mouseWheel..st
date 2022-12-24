event handling
mouseWheel: event

	grManipulator ifNotNil: [ :obj | 
		event isUp ifTrue: [ obj wheelUp ].
		event isDown ifTrue: [ obj wheelDown ] ]
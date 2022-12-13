accessing
color

	^ color = Color transparent
		  ifTrue: [ owner color ]
		  ifFalse: [ color ]
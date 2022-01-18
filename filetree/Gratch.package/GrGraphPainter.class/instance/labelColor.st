constants
labelColor
	^ bgColor = Color white
		ifTrue: [ Color black ]
		ifFalse: [ Color white ]
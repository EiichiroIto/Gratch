accessing
scriptNamed: aString

	^ scripts detect: [ :each | each objName = aString ] ifNone: [ nil ]
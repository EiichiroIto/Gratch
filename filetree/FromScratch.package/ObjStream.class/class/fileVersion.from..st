accessing
fileVersion: anAppClass from: aStream
	"Answer the Scratch file version number from the given string. If the string is of the form: 'ScratchVxx', were xx is a two-digit integer, answer the value of xx. Otherwise, answer 0."

	| str |
	str := (aStream next: anAppClass fileVersionString size) asString.
	(str beginsWith: anAppClass fileVersionTag)
		ifFalse: [ ^ 0 ].
	^ (str
		copyFrom: anAppClass fileVersionTag size + 1
		to: str size) asNumberNoError
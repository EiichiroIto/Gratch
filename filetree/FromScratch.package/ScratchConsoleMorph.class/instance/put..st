api
put: aString

	aString do: [ :each | 
		(each = Character lf or: [ each = Character cr ])
			ifTrue: [ self newLine ]
			ifFalse: [ self putChar: each ] ]
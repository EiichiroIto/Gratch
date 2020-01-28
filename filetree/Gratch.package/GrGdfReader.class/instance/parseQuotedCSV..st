private
parseQuotedCSV: aString
	| data in c word |
	data := OrderedCollection new.
	in := ReadStream on: aString.
	word := WriteStream on: ''.
	[ in atEnd ]
		whileFalse: [ 
			c := in next.
			c = $'
				ifTrue: [ word nextPutAll: (in upTo: $') ]
				ifFalse: [ 
					c = $,
						ifTrue: [ 
							data add: word contents.
							word := WriteStream on: '' ]
						ifFalse: [ word nextPut: c ] ] ].
	word isEmpty
		ifFalse: [ data add: word contents ].
	^ data
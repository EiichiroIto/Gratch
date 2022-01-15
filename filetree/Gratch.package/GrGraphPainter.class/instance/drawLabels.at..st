drawing
drawLabels: aCollection at: aPoint
	| stream |
	aCollection ifNil: [ ^ self ].
	stream := WriteStream on: ''.
	aCollection
		do: [ :each | stream nextPutAll: each asString ]
		separatedBy: [ stream nextPutAll: ', ' ].
	canvas
		drawString: stream contents
		at: aPoint
		font: self labelFont
		color: self labelColor
drawing
drawLabels: aCollection at: aPoint on: aCanvas
	| stream |
	aCollection ifNil: [ ^ self ].
	stream := WriteStream on: ''.
	aCollection
		do: [ :each | stream nextPutAll: each asString ]
		separatedBy: [ stream nextPutAll: ', ' ].
	aCanvas
		drawString: stream contents
		at: aPoint
		font: self labelFont
		color: self labelColor
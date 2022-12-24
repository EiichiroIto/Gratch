drawing
drawNodeLabels: aCollection at: aPoint

	| stream str w h |
	aCollection ifNil: [ ^ self ].
	stream := WriteStream on: ''.
	aCollection
		do: [ :each | stream nextPutAll: each asString ]
		separatedBy: [ stream nextPutAll: ', ' ].
	str := stream contents.
	w := self labelFont widthOfString: str.
	h := self labelFont height.
	canvas
		drawString: str
		at: aPoint - self nodeExtent - (w // 2 @ h)
		font: self labelFont
		color: self labelColor
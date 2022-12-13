drawing
drawSelectionOn: aCanvas

	| xRanges clipC vInset offset selectionH rect start end |
	xRanges := stringMorph xRangesFor: stringMorph contents.
	clipC := aCanvas copyClipRect: self innerBounds.
	vInset := borderWidth + 2.
	offset := stringMorph leftMargin @ (self top + vInset).
	selectionH := self height - (2 * vInset).

	selectionStart = selectionEnd ifTrue: [ 
		blinkState ifTrue: [ 
			rect := (self currsorOffsetFor: selectionStart) - 1 @ 0 extent:
				        2 @ selectionH.
			clipC
				fillRectangle: (rect translateBy: offset)
				color: self selectionColor ].
		^ self ].

	selectionStart < selectionEnd
		ifTrue: [ 
			start := selectionStart + 1.
			end := selectionEnd ]
		ifFalse: [ 
			start := selectionEnd + 1.
			end := selectionStart ].
	start := start max: 1.
	end := end min: xRanges size.

	rect := (xRanges at: start) first @ 0 corner:
		        (xRanges at: end) second @ selectionH.
	clipC
		fillRectangle: (rect translateBy: offset)
		color: self selectionColor
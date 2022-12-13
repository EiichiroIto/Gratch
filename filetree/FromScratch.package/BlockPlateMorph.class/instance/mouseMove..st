event handling
mouseMove: evt

	| range diff newPoint |
	draggingPoint ifNil: [ ^ self ].
	range := self extent - owner extent.
	diff := draggingPoint - evt cursorPoint.
	newPoint := scrollPoint + diff.
	newPoint := newPoint max: 0 @ 0.
	newPoint := newPoint min: range.
	owner
		hScrollPixels: newPoint x;
		vScrollPixels: newPoint y
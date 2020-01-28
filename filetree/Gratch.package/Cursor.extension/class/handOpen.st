*Gratch
handOpen
	"Cursor handOpen showWhile: [Sensor waitButton]"

	| cursor |
	cursor := CursorWithMask
		extent: 16 @ 16
		fromArray: #(384 6768 9800 9802 4685 4681 26633 38913 34818 16386 8194 8196 4100 2056 1032 1032)
		offset: -8 @ -8.
	cursor
		setMaskForm:
			(Form
				extent: 16 @ 16
				depth: 1
				fromArray:
					#(25165824 468713472 1073217536 1073348608 536805376 536805376 1878982656 4294901760 4294836224 2147352576 1073610752 1073479680 536608768 267911168 133693440 133693440)
				offset: 0 @ 0).
	^ cursor
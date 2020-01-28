*Gratch
handClosed
	"Cursor handOpen showWhile: [Sensor waitButton].
	 Cursor handClosed showWhile: [Sensor waitNoButton]"

	| cursor |
	cursor := CursorWithMask
		extent: 16 @ 16
		fromArray: #(0 0 0 448 3704 4686 4105 14337 18434 16386 8194 8196 4100 2056 1032 1032)
		offset: -8 @ -8.
	cursor
		setMaskForm:
			(Form
				extent: 16 @ 16
				depth: 1
				fromArray:
					#(0 0 0 29360128 267911168 536739840 536805376 1073676288 2147352576 2147352576 1073610752 1073479680 536608768 267911168 133693440 133693440)
				offset: 0 @ 0).
	^ cursor
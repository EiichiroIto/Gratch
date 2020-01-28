accessing graph
extent
	| rect |
	rect := self graphRectangle.
	rect ifNil: [ ^ 0 @ 0 ].
	^ rect extent
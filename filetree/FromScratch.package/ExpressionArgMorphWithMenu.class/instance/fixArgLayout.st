private
fixArgLayout

	| dx |
	super fixArgLayout.
	menuMorph ifNil: [ ^ self ].
	dx := 9.
	self width: self width + dx.
	menuMorph position:
		self right - dx - 2 @ (self top + (self height // 3)).
	(thisContext sender receiver isKindOf: StringFieldMorph) ifTrue: [
		"clear only when user edit my label, but not on other arg layout changes" 
		specialValue := nil ]
private
newLine

	| line |
	(self withinScreen: cursor) ifFalse: [ ^ self ].
	line := self currentLine.
	line := line copyFrom: 1 to: cursor x.
	self currentLine: line.
	cursor := 0 @ (cursor y + 1).
	cursor y < screenSize y ifTrue: [ ^ self ].
	self scroll: 1.
	cursor := 0 @ (screenSize y - 1)
private
scroll: anInteger

	anInteger >= screenSize y ifTrue: [ ^ self clearScreen ].
	screen := (screen
		           copyFrom: screen size - (screenSize y - anInteger - 1)
		           to: screen size) , (Array new: anInteger withAll: '')
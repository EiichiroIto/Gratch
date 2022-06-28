private
characterAt: aPoint put: aCharacter

	| line |
	(self withinScreen: aPoint) ifFalse: [ ^ self ].
	line := screen at: aPoint y + 1.
	line := aPoint x >= line size
		        ifTrue: [ 
		        line , (String new: aPoint x - line size withAll: Character space)
		        , aCharacter asString ]
		        ifFalse: [ 
			        (line copyFrom: 1 to: aPoint x) , aCharacter asString
			        , (line copyFrom: aPoint x + 2 to: line size) ].
	screen at: aPoint y + 1 put: line
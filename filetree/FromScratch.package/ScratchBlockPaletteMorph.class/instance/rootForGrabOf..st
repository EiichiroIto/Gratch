dropping/grabbing
rootForGrabOf: aMorph

	"I act like a parts bin; answer a new copy of the morph being extracted."

	| root |
	root := aMorph.
	root isBlockMorph ifFalse: [ ^ nil ].
	[ root = self ] whileFalse: [ 
		root owner == self ifTrue: [ ^ root fullCopy ].
		root := root owner ].
	^ super rootForGrabOf: aMorph
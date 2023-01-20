accessing
modified: aBoolean

	modified = aBoolean ifTrue: [ ^ self ].
	modified := aBoolean.
	application ifNotNil: [ application projectModified ]
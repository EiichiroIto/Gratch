accessing
allSubNames

	| result |
	result := Set new.
	scripts do: [ :each | result addAll: each subNames ].
	^ result asArray sort
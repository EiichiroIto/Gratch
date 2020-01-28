accessing
varNames
	| list |
	list := Set new.
	breeds do: [ :each | list addAll: each userDefinedVarNames ].
	^ list asSortedCollection asArray.
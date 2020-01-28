private
parseColor: aString
	| c arguments |
	arguments := (aString splitOn: $,)
		collect: [ :each | (each asInteger / 256) asFloat ].
	c := Color perform: #r:g:b: withArguments: arguments asArray.
	^ ColorList default nearestColor: c
private
parseDef: aString
	^ ((aString splitOn: $,) collect: [ :each | (each trimBoth splitOn: Character space) asArray ]) asArray
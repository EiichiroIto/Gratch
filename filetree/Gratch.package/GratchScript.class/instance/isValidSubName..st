testing
isValidSubName: aString
	^ aString allSatisfy: [ :each | each isAlphaNumeric ]
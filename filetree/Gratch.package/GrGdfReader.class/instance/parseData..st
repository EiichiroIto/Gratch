private
parseData: aString
	| data |
	data := (self parseQuotedCSV: aString) collect: [ :each | each trimBoth ].
	^ self columnWithData: data
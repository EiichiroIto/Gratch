private
columnWithData: aCollection
	columns size = aCollection size
		ifFalse: [ self error: 'data does not match with its definition.' ].
	^ columns with: aCollection collect: [ :c :d | Array with: c with: d ]
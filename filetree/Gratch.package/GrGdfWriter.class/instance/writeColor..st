private
writeColor: aColor
	| color |
	color := aColor ifNil: [ Color black ].
	stream
		nextPut: $';
		nextPutAll: (color red * 255) asInteger asString;
		nextPut: $,;
		nextPutAll: (color green * 255) asInteger asString;
		nextPut: $,;
		nextPutAll: (color blue * 255) asInteger asString;
		nextPut: $'
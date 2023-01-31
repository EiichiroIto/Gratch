accessing
labelMorphContents: aString

	labelMorph contents: (self isVarNames
			 ifTrue: [ aString ]
			 ifFalse: [ aString localized ])
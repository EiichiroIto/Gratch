private
assureLoadCompatibilityDictionary

	| file |
	compatibilityDictionary ifNotNil: [ ^ self ].
	file := self class compatibleFile.
	compatibilityDictionary := file isFile
		                           ifTrue: [ 
		                           file readStreamDo: [ :s | 
			                           STON fromStream: s ] ]
		                           ifFalse: [ Dictionary new ]
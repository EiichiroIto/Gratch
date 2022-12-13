file read/write
writeProjectAs: aFileReference

	| saveError out tmpFile |
	"self scripts setupBlockDef."
	self scripts do: [ :m | 
		m blocksBin allMorphsDo: [ :b | 
			b isBlockMorph ifTrue: [ b stopProcess ] ].
		m convertStacksToTuples ].
	saveError := nil.
	tmpFile := (self
		            unusedNameStartingWith: 'tmp'
		            in: aFileReference parent) asFileReference.
	SpScratchApp
		try: [ 
			out := tmpFile binaryWriteStream.
			out
				ifNil: [ 
				saveError := 'Folder may be locked or read-only' localized ]
				ifNotNil: [ 
					out nextPutAll: self class fileVersionString asByteArray.
					self storeProjectInfoOn: out.
					self newObjStream storeObj: self on: out.
					out close ] ]
		onFailure: [ :err | 
			out ifNotNil: [ 
				[ 
				out close.
				tmpFile delete ]
					on: Error
					do: [  ] ].
			saveError := err ].
	self scripts do: [ :m | m convertTuplesToStacks ].
	saveError ifNotNil: [ 
		SpScratchApp alert: saveError.
		^ false ].
	aFileReference deleteIfAbsent: [  ].
	[ tmpFile renameTo: aFileReference basename ]
		on: Error
		do: [ 
			SpScratchApp alert:
				'Save failed. The folder may be read-only.' localized.
			^ false ].
	self modified: false.
	^ true
accessing
fixScriptBeforeWriting

	blocksBin allMorphsDo: [ :each | 
		each isBlockMorph ifTrue: [ each stopProcess ] ]
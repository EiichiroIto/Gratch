utilities
allBlockSymbols

	| list |
	list := ScratchScript allSubclasses.
	list := list reject: [ :each | each category endsWith: '-Tests' ].
	list := list collect: [ :each | 
		        each new
			        setupBlockSpecs;
			        yourself ].
	list := list reject: [ :each | each blockMorphBuilder isNil ].
	list := list flatCollect: [ :each | 
		        each blockMorphBuilder blockSpecs ].
	list := list select: #isBlockSpec.
	^ (list collect: #selector) asSet
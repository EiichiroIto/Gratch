accessing
allSymbols

	"self allSymbols inspect."

	| list |
	list := ScratchScript allSubclasses collect: [ :each | 
		        each new
			        setupBlockSpecs;
			        yourself ].
	list := list flatCollect: [ :each | 
		        each blockMorphBuilder blockSpecs ].
	list := list collect: [ :each | each selector ].
	list := list asSet.
	list := list asSortedCollection.
	^ list asArray
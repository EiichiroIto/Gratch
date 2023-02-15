private
registerBlockSpec: aBlockSpec asCategory: aCategoryString

	| color |
	self assert: [ 
		(blockSpecDictionary includesKey: aBlockSpec selector) not ].
	aBlockSpec selector ifNotNil: [ :selector | 
		blockSpecDictionary at: selector put: aBlockSpec ].
	aCategoryString ifNotNil: [ 
		self appendBlockSpec: aBlockSpec into: aCategoryString.
		color := categoryColors
			         at: aCategoryString
			         ifAbsentPut: [ self unknownCategoryColor ].
		aBlockSpec color: color ]
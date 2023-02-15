utilities
addBlockDefs: aCollection to: aSet

	aCollection do: [ :each | 
		aSet
			addAll: each blockCategories;
			addAll: (each blockMorphBuilder blockSpecs collect: #label) ]
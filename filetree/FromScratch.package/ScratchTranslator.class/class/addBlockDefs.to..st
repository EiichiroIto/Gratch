utilities
addBlockDefs: aCollection to: aSet

	aCollection do: [ :each | 
		aSet addAll: each blockCategories.
		each blocks do: [ :each2 | 
			each2 = '-' ifFalse: [ 
				each2 isString
					ifTrue: [ aSet add: each2 ]
					ifFalse: [ 
						(each2 isArray and: [ each2 size > 2 ]) ifTrue: [ 
							aSet add: each2 first ] ] ] ] ]
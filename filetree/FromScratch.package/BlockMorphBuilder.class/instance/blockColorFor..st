api
blockColorFor: aCategory

	^ categoryColors
		at: aCategory
		ifAbsent: [ self unknownCategoryColor ]
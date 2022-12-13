utilities
addLocalizedTextsTo: aSet

	| list list3 |
	list := #localized senders.
	list do: [ :each | 
		list3 := each sendNodes select: [ :each2 | 
			         each2 selector = #localized and: [ 
				         each2 receiver isLiteralNode and: [ 
					         each2 receiver isLiteralArray not ] ] ].
		list3 := list3 collect: [ :each2 | each2 receiver value ].
		aSet addAll: list3 ]
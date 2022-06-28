accessing
items: aCollection

	| items |
	items := tableVars selectedItems.
	tableVars items: aCollection.
	items notEmpty ifTrue: [ tableVars selectItems: items ]
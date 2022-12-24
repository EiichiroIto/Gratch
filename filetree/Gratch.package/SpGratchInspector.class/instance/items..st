accessing
items: aCollection

	| index |
	index := tableVars selectionMode selectedIndex.
	tableVars items: aCollection.
	index > 0 ifTrue: [ tableVars selectIndex: index ]
accessing
whenEditDo: aBlock
	buttonEdit action: [ aBlock cull: tableVars selection selectedItem ]
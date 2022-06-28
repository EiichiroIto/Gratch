private
addBlockMenu: aMenu for: aBlockMorph
	super addBlockMenu: aMenu for: aBlockMorph.
	aMenu
		addGroup: [ :grp | 
			grp
				addItem: [ :item | 
					item
						name: 'bytecode' localized;
						action: [ application showBytecode: aBlockMorph ] ] ]
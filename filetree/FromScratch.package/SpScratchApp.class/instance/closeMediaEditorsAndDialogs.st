private
closeMediaEditorsAndDialogs

	(self currentWorld submorphs select: [ :each | 
		 each isKindOf: DialogWindowMorph ]) do: #delete
accessing
whenActivatedDo: aBlock
	tableVars
		whenActivatedDo: [ :obj | 
			aBlock cull: obj.
			self updateTable ]
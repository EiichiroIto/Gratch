private
showElementView: anInteger
	| dialog bno |
	bno := self currentBreedNo.
	dialog := self instantiate: SpGratchElementView.
	dialog
		title: self target objName , ' Variables';
		getValuesBlock: [ self grWorld varsBreed: bno at: anInteger ];
		whenDeletedDo: [ self grWorld kill: anInteger breed: bno ];
		whenActivatedDo: [ :obj | 
			self change: obj breed: bno at: anInteger.
			stageFrame display changed ].
	dialog openDialogWithSpec
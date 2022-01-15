private
dataMenu
	^ self newMenu
		addGroup: [ :grp | 
			grp
				addItem: [ :item | 
					item
						name: 'Save Graph as PNG' localized;
						action: [ application saveGraph ] ];
				addItem: [ :item | 
					item
						name: 'Save Stage as PNG' localized;
						action: [ application saveStageAsImage ] ];
				addItem: [ :item | 
					item
						name: [ application isRecording
								ifTrue: [ 'Stop Stage Recording' localized ]
								ifFalse: [ 'Start Stage Recording' localized ] ];
						autoRefresh: true;
						action: [ application toggleStageRecording ] ] ];
		yourself
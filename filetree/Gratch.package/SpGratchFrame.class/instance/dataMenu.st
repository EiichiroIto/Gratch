menu building
dataMenu

	^ self newMenu
		  addGroup: [ :grp | 
			  grp
				  addItem: [ :item | 
					  item
						  name: 'Save Stage as PNG' localized;
						  action: [ application saveStageAsImage ] ];
				  addItem: [ :item | 
					  item
						  name: (application isRecording
								   ifTrue: [ 'Stop Stage Recording' localized ]
								   ifFalse: [ 'Start Stage Recording' localized ]);
						  action: [ 
							  application toggleStageRecording.
							  item name: (application isRecording
										   ifTrue: [ 'Stop Stage Recording' localized ]
										   ifFalse: [ 'Start Stage Recording' localized ]) ] ] ];
		  yourself
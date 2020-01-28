execution
executeEventCodes: anEventCodes ifTerminatedDo: aBlock
	1 to: grWorld maxBreedNo do: [ :bno | 
		| codes |
		codes := anEventCodes forBreedNo: bno.
		codes
			do: [ :code | 
				grWorld
					livingBreed: bno
					do: [ :index | 
						self
							executeThread: code
							breedNo: bno
							index: index
							ifTerminatedDo: aBlock ] ] ].
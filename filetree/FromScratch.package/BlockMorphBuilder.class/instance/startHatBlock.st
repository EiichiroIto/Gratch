api
startHatBlock

	^ EventHatMorph new
		  for: 'when start' event: #start;
		  scriptOwner: script;
		  yourself
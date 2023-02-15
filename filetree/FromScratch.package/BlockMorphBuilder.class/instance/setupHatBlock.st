api
setupHatBlock

	^ EventHatMorph new
		  for: 'when setup' event: #setup;
		  scriptOwner: script;
		  yourself
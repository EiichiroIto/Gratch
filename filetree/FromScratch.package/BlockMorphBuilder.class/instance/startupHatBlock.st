api
startupHatBlock

	^ EventHatMorph new
		  for: 'when setup' event: #startup;
		  scriptOwner: script;
		  yourself
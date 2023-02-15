api
loopHatBlock

	^ EventHatMorph new
		  for: 'when loop' event: #loop;
		  scriptOwner: script;
		  yourself
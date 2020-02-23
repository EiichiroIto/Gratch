baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FromScratch';
				package: 'FromScratch-Tests'
					with: [ spec requires: #('FromScratch') ];
				package: 'Gratch' with: [ spec requires: #('FromScratch') ];
				package: 'Gratch-Tests'
					with: [ spec requires: #('FromScratch' 'Gratch') ] ]
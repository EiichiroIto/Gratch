baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'FromScratch';
				package: 'Gratch' with: [ spec requires: #('FromScratch') ] ]
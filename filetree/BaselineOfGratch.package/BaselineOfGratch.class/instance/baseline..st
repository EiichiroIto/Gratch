baselines
baseline: spec

	<baseline>
	spec for: #common do: [ 
		spec
			package: 'FromScratch';
			package: 'FromScratch-Tests'
			with: [ spec requires: #( 'FromScratch' ) ];
			package: 'Microworld' with: [ spec requires: #( 'FromScratch' ) ];
			package: 'Gratch'
			with: [ spec requires: #( 'FromScratch' 'Microworld' ) ];
			package: 'Gratch-Tests'
			with: [ spec requires: #( 'FromScratch' 'Microworld' 'Gratch' ) ] ]
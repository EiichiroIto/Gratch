world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: self appName asSymbol)
		order: 0.5;
		target: self;
		action: [self new open]; 
		icon: self icon
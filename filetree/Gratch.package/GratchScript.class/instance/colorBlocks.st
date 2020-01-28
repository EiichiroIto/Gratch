block specs
colorBlocks
	^ #(
		'color'
			('color'					r	getColor)
			('set color to %c'			- setColor: 15)
			('scale %v color %c from %n to %n'  - #scaleValue:color:from:to: '' 15 0 100 )
			-
	), self constantColorBlocks
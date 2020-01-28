accessing
grWorld: aWorld
	| display manipulator |
	display := self display.
	manipulator := GrGraphManipulator new
		grWorld: aWorld;
		grDisplay: display;
		model: self;
		whenDoubleClickDo: [ :eno | self showElementView: eno ];
		getBreedNoBlock: [ self currentBreedNo ];
		yourself.
	display
		grWorld: aWorld;
		grManipulator: manipulator;
		changed
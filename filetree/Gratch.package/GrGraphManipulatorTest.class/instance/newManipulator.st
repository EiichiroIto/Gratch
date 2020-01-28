instance creation
newManipulator
	| w d |
	w := self newWorld.
	d := GrDisplay new grWorld: w.
	^ GrGraphManipulator new
		grWorld: w;
		grDisplay: d;
		yourself
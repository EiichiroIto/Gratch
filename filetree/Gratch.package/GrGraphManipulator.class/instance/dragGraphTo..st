private
dragGraphTo: aPoint
	| p1 p2 p |
	p1 := grDisplay worldPointToGraph: startPoint.
	p2 := grDisplay worldPointToGraph: aPoint.
	p := (p1 - p2) / grDisplay zoom.
	grDisplay graphCenter: graphCenter + (p x @ p y negated)
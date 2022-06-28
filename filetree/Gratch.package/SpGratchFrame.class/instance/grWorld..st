accessing
grWorld: aWorld
	| display manipulator |
	self showInspector: nil.
	display := self display.
	manipulator := GrGraphManipulator new
		grWorld: aWorld;
		grDisplay: display;
		whenClickedDo: [ :p | self clickedAt: p ];
		whenDraggedDo: [ :from :to | self draggedFrom: from to: to ];
		whenDraggingDo:
				[ :from :to :node | self draggingFrom: from to: to at: node ];
		yourself.
	display
		grWorld: aWorld;
		grManipulator: manipulator;
		changed
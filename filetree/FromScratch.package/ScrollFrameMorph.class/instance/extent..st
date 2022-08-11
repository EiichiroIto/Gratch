geometry
extent: aPoint

	"After setting my size, position and size my scrollbars and grow box. Also update my contents and scrollbar ranges."

	| inner w h |
	super extent: (aPoint truncated max: self minWidth @ self minHeight).

	inner := self innerBounds.

	w := inner width - self scrollBarStartInset - (vScrollbar owner = self
		      ifTrue: [ self vbarInset ]
		      ifFalse: [ self scrollBarEndInset ]).
	hScrollbar position:
		inner left + self scrollBarStartInset @ (inner bottom - self hbarInset).
	hScrollbar extent: w @ self hbarInset.

	h := inner height - self scrollBarStartInset - (hScrollbar owner = self
		      ifTrue: [ self hbarInset ]
		      ifFalse: [ self scrollBarEndInset ]).
	vScrollbar position:
		inner right - self vbarInset @ (inner top + self scrollBarStartInset).
	vScrollbar extent: self vbarInset @ h.

	self updateContentsExtent.
	self updateScrollbars
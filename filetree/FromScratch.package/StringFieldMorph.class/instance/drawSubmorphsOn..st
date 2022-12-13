drawing
drawSubmorphsOn: aCanvas

	"Clip submorph drawing to my bounds."

	super drawSubmorphsOn: (aCanvas copyClipRect: self innerBounds)
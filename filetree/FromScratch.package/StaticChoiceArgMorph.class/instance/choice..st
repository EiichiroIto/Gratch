accessing
choice: aSymbol

	"Update the toggle button when an argument is changed within a block."

	| block |
	choice := aSymbol.
	self labelMorphContents: aSymbol asString.
	labelMorph
		position: self position + borderWidth + (3 @ -1);
		layoutChanged;
		changed.
	self extent: labelMorph extent + (16 @ 2) + borderWidth.
	menuIconMorph position:
		self right - borderWidth - 10 @ (self top + borderWidth + 4).
	(block := self meOrOwnerThatIsA: HatBlockMorph) ifNotNil: [ 
		block fixBlockLayout ]
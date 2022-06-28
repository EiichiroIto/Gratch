event handling
keyStroke: evt

	| ch |
	ch := evt keyCharacter asUnicode.
	ch = 0 ifTrue: [ch := evt keyValue].

	evt buttons = 64 ifTrue: [ch := ch \\ 32].  "command (alt) key pressed; map to a control key"
	(ch = 3) & (evt buttons = 0) ifTrue: [ch := 13].  "map enter key to cr"

	(evt buttons = 64) | (evt buttons = 16) ifTrue: [	"ctrl (or alt) is pressed"
		ch = 1 ifTrue: [self selectAll].		"ctrl-a"
		ch = 3 ifTrue: [self copySelection]. 	"ctrl-c"
		ch = 22 ifTrue: [self paste].			"ctrl-v"
		ch = 24 ifTrue: [self cutSelection].	"ctrl-x"
		ch = 26 ifTrue: [self undo]].			"ctrl-z"

	evt buttons = 8 ifTrue: [ "shift is pressed"
		ch = 28 ifTrue: [self moveCursorLeftAndSelect].  	"shift-left"
		ch = 29 ifTrue: [self moveCursorRightAndSelect].	"shift-right"
		ch = 1 ifTrue: [self moveCursorHomeAndSelect].	"home"
		ch = 4 ifTrue: [self moveCursorEndAndSelect]].	"end"

	evt buttons = 0 ifTrue: [
		ch = 1 ifTrue: [self moveCursorHome].	"home"
		ch = 4 ifTrue: [self moveCursorEnd].		"end"
		ch = 28 ifTrue: [self moveCursorLeft].	"left"
		ch = 29 ifTrue: [self moveCursorRight].	"right"
		blinkState := true].

	ch >= 32 ifTrue: [self insertCharacter: ch].

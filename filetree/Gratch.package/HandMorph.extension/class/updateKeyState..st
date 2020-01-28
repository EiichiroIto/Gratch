*Gratch
updateKeyState: keyEvent
	| ascii |
	"Transcript cr; show: keyEvent scanCode."
	ascii := self characterForScanCode: keyEvent scanCode.
	ascii ifNil: [ ^ self ].
	"Transcript
		cr;
		show: keyEvent;
		show: ' ';
		show: ascii."
	KeyState ifNil: [ ^ self ].
	keyEvent isKeyDown
		ifTrue: [ KeyState at: ascii + 1 put: true ].
	keyEvent isKeyUp
		ifTrue: [ KeyState at: ascii + 1 put: false ]
accessing
try: aBlock onFailure: anErrorBlock
	^ UseErrorCatcher
		ifTrue: [ aBlock
				on: Error
				do: anErrorBlock ]
		ifFalse: [ aBlock value ]
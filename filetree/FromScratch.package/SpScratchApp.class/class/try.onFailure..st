accessing
try: aBlock onFailure: anErrorBlock
	^ self useErrorCatcher
		ifTrue: [ aBlock
				on: Error
				do: anErrorBlock ]
		ifFalse: [ aBlock value ]
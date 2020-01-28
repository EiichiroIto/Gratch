acccessing
import: aString to: anApplication
	| reader |
	reader := GrGdfReader new.
	reader import: aString to: anApplication grWorld
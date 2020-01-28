accessing
import: aString to: aWorld
	grWorld := aWorld.
	aString linesDo: [ :each | self importLine: each ]
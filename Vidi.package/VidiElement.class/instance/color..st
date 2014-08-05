as yet unclassified
color: aColor

	selected
		ifFalse: [ shape color: aColor ]
		ifTrue: [ prevColor := aColor ]
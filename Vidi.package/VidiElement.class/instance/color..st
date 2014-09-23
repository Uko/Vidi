accessing
color: aColor

	selected
		ifFalse: [ shape color: aColor ]
		ifTrue: [ prevColor := aColor ]
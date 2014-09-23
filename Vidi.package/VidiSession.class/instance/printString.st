as yet unclassified
printString
	^ 'Session on: ', ((packages collect: #name) asOrderedCollection joinUsing: ', ')
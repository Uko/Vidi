printing
printString
	^ 'Session on: ', ((packages collect: #name) asOrderedCollection joinUsing: ', ')
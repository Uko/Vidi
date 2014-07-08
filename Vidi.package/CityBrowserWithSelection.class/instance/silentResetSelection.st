accessing
silentResetSelection

	selected ifNotNil: [ 
		selected key shape color: selected value.
		selected := nil ]
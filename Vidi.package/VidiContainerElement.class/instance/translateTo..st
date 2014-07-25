accessing
translateTo: aVector

	| dist |
	dist := aVector - position.
	
	super translateTo: aVector.
	
	descendents do: [ :d |
		d translateBy: dist ]	
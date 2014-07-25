accessing
translateBy: aVector
	
	super translateBy: aVector.
	
	descendents do: [ :d |
		d translateBy: aVector ]	
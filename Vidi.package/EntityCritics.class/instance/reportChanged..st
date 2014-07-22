announcer handling
reportChanged: ann 

	ann affectedReport entity = entity ifTrue: [ 
		self resetCritList ]
as yet unclassified
reportChanged: ann 

	ann affectedReport entity = entity ifTrue: [ 
		self resetCritList ]
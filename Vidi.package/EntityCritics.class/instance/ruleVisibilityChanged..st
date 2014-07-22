announcer handling
ruleVisibilityChanged: ann 

	entity ifNil: [ ^self ].
	 
	(ann affectedRule violations includesAny: entity violations) ifTrue: [ 
		self resetCritList ]
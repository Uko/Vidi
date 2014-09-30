announcer handling
ruleVisibilityChanged: ann 

	self model ifNil: [ ^self ].
	 
	(ann affectedRule violations includesAny: self model violations) ifTrue: [ 
		self morph ]
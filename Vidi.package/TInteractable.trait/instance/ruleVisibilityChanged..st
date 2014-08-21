as yet unclassified
ruleVisibilityChanged: ann 

	self model ifNil: [ ^self ].
	 
	(ann affectedRule violations includesAny: self model violations) ifTrue: [ 
		self morph ]
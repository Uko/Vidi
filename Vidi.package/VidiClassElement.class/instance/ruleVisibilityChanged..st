as yet unclassified
ruleVisibilityChanged: ann 

	model ifNil: [ ^self ].
	 
	(ann affectedRule violations includesAny: model violations) ifTrue: [ 
		self morph ]
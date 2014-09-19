accessing
reEntityUpdated: ann 

	self model ifNil: [ ^self ].
	(ann affectedEntity = self model) ifTrue: [ self morph ]
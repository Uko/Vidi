as yet unclassified
reEntityUpdated: ann 

	model ifNil: [ ^self ]. 
	(ann affectedEntity = model) ifTrue: [ self morph ]
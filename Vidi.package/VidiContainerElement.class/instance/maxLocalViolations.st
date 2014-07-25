as yet unclassified
maxLocalViolations
	
	descendents ifEmpty: [ ^ 0 ].
	
	^ (descendents collect: #maxLocalViolations) 	max
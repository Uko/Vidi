properties
maxLocalViolations
	
	descendents ifEmpty: [ ^ 0 ].
	
	^ (descendents collect: #maxLocalViolations) 	max
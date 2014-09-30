properties
maxViolations

	^ parent
		ifNotNilDo: #maxViolations
		ifNil: [ self maxLocalViolations ]
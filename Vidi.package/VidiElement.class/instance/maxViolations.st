as yet unclassified
maxViolations

	^ parent
		ifNotNilDo: #maxViolations
		ifNil: [ self maxLocalViolations ]
as yet unclassified
morph

	shape color: (model isForeign
		ifTrue: [ Color black ]
		ifFalse: [ 
			| maxViolations |
			maxViolations := self maxViolations.
			maxViolations isZero
				ifTrue:  [ Color gray ]
				ifFalse: [ Color red
					mixed: model numberOfVisibleViolations / maxViolations
					with: Color gray ]
			 ])
private
morph

	self color: (self model isForeign
		ifTrue: [ Color black ]
		ifFalse: [ 
			| maxViolations |
			maxViolations := self maxViolations.
			maxViolations isZero
				ifTrue:  [ Color gray ]
				ifFalse: [ Color red
					mixed: self model numberOfVisibleViolations / maxViolations
					with: Color gray ]
			 ])
private
morph

	self color: (self model isForeign
		ifTrue: [ Color black ]
		ifFalse: [ Color red
					mixed: (self model numberOfVisibleViolations min: 4) / 4
					with: Color gray ])
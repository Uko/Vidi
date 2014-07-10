as yet unclassified
assignViolations: aDictionary

	self entities do: [ :entity |
		entity violations: (
			aDictionary
				at: entity mirroredEntity
				ifAbsent: #()) ]
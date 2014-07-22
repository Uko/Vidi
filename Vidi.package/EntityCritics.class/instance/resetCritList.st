protocol
resetCritList

	critList resetSelection.
	critList items: (entity ifNil: #() ifNotNilDo: #visibleViolations)
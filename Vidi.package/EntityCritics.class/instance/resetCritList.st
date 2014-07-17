protocol
resetCritList

	critList resetSelection.
	critList items: (entity ifNil: #() ifNotNil: #visibleViolations)
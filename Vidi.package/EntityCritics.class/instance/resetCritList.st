protocol
resetCritList

	critList resetSelection.
	critList roots: (entity ifNil: #() ifNotNilDo: #visibleViolations)
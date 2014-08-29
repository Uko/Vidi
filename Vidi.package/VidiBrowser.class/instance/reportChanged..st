accessing
reportChanged: ann

	(model rules includes: ann affectedReport rule)
		ifTrue: [ self updateTree ]
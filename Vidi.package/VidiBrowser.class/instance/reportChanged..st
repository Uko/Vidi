accessing
reportChanged: ann
	(model rules includes: ann affectedReport rule)
		ifFalse: [ ^ self ].
	ruleList updateTree.
	cityBrowser resetInfobars
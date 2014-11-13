accessing
reportChanged: ann

	(model rules includes: ann affectedReport rule)
		ifTrue: [
			ruleList updateTree.
			cityBrowser resetInfobars ]
accessing
categorizeAllUncategorized
	| uncategorizedMethods |
	uncategorizedMethods :=
		class uncategorizedSelectors collect: [ :selector | class >> selector ].

	MethodClassifier classifyAll: uncategorizedMethods.
	self updateProtocols
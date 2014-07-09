accessing
environment
	^ environment ifNil: [ environment := RBPackageEnvironment new ].
	
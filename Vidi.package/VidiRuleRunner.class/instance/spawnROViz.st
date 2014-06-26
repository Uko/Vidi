violation
spawnROViz
	self check.
	^ ROVidi new
		rules: rules;
		packagesModel: self packagesModel;
		yourself
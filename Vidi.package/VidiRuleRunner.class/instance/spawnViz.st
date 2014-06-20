violation
spawnViz
	self check.
	^ Vidi new
		rules: rules;
		packModel: self packagesModel;
		yourself
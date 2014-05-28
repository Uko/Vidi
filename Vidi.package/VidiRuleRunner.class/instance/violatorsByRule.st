violation
violatorsByRule
	^ (rules leaves
		reject: [ :rule | rule critics isEmpty ]
		thenCollect: [ :rule | rule -> rule critics ]) asDictionary 
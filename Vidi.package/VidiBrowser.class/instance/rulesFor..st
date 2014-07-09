rulesHandling
rulesFor: aViolator

	^ self rulesByViolator at: aViolator ifAbsent: #()
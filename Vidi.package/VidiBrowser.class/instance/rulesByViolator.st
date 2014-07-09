rulesHandling
rulesByViolator
	rulesByViolator ifNil: [  
	rulesByViolator := Dictionary new.
	self selectedRule leaves
		do: [ :rule |
			rule critics do: [ :violator |
				(rulesByViolator
					at: violator
					ifAbsentPut: Set new) add: rule ] ] ].
		
	^ rulesByViolator
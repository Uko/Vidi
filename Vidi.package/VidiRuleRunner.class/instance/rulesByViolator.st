visualization
rulesByViolator
	| dict |
	dict := Dictionary new.
	self rules leaves
		do: [ :rule |
			rule critics do: [ :violator |
				(dict
					at: violator
					ifAbsentPut: Set new) add: rule ] ].
	^ dict
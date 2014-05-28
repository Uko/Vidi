violation
rulesByViolator
	| dict |
	dict := Dictionary new.
	rules leaves
		do: [ :rule |
			rule critics do: [ :violator |
				(dict
					at: violator
					ifAbsentPut: Set new) add: rule ] ].
	^ dict
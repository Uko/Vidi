*vidi
changeMethodValue
	^ (TextDiffBuilder from: self oldMethod to: self newMethod) buildPatchSequence
		inject: 0
		into: [ :subtotal :assoc |
			assoc key = #match
				ifTrue: [ subtotal ]
				ifFalse: [ subtotal + assoc value size ] ]
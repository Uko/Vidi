*vidi
changeValue
	^ (TextDiffBuilder from: self oldMethod to: self newMethod) buildPatchSequence
		inject: 0
		into: [ :subtotal :assoc |
			assoc key = #match
				ifFalse: [ subtotal ]
				ifTrue: [ subtotal + assoc value size ] ]
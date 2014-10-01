*vidi
changeValue
	^ (ClassDiffBuilder from: self oldClass to: self newClass) buildPatchSequence
		inject: 0
		into: [ :subtotal :assoc |
			assoc key = #match
				ifFalse: [ subtotal ]
				ifTrue: [ subtotal + assoc value size ] ]
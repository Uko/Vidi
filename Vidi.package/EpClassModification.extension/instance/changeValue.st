*vidi
changeValue
	^ (ClassDiffBuilder from: self oldClass to: self newClass) buildPatchSequence
		inject: 0
		into: [ :subtotal :assoc |
			assoc key = #match
				ifTrue:  [ subtotal ]
				ifFalse: [ subtotal + assoc value size ] ]
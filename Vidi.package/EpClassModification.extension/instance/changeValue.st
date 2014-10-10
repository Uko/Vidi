*vidi
changeValue
	^ (ClassDiffBuilder from: self oldClass definition to: self newClass definition) buildPatchSequence
		inject: 0
		into: [ :subtotal :assoc |
			assoc key = #match
				ifTrue:  [ subtotal ]
				ifFalse: [ subtotal + assoc value size ] ]
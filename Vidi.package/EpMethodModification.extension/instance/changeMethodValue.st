*vidi
changeMethodValue
	^ (PrettyTextDiffBuilder from: self oldMethod sourceCode to: self newMethod sourceCode) buildPatchSequence
		inject: 0
		into: [ :subtotal :assoc |
			assoc key = #match
				ifTrue: [ subtotal ]
				ifFalse: [ subtotal + assoc value size ] ]
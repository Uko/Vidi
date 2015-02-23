as yet unclassified
diffIn: composite

	composite diff
		when: [ :change | change operation notNil ];
		contextClass: [ :change |
				change operation isClassPatch
					ifTrue: [ nil ]
					ifFalse: [change operation targetClass]]; 
		display: [ :change |
			{ change operation diffFromSource .
			  change operation diffToSource } ]
		
		
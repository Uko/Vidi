vizualization
roBuilder
	| builder  maxViolations rulesByViolator |
	
	
	rulesByViolator := self rulesByViolator.


	
	builder := ROTreeMapBuilder new.
	builder weightBlock: [ :e | e size + 1 ].
	builder origin: 10@10.	
	builder extent: 800@600.
	builder nodes: packages, (packages flatCollect: #allDescendents).
	builder nestingFromAssociations: (builder nodes flatCollect: [ :ent |
		ent descendents collect: [ :desc |
			ent -> desc ] ]).
	
	maxViolations := builder nodes inject: 0 into: [ :max :entity |
		(rulesByViolator at: entity mirroredEntity ifAbsent: #()) size max: max ].	
	builder colorBlock: [ :element |
		element model isForeign
			ifTrue: [
				Color lightGray ]
			ifFalse: [
				Color red
					mixed: (rulesByViolator at: element model mirroredEntity ifAbsent: #()) size / maxViolations
					with: Color white ] ].
		
		
	^ builder
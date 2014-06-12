visualization
ccNewBuilder
	"CodeCity viz"
	| builder rulesByViolator allTargets |
	packagesModel := self packagesModel.
	allTargets := packagesModel, (packagesModel flatCollect: #allDescendents).
	rulesByViolator := self rulesByViolator.
	
	builder := CCBuilder new.
	builder shape platform color: Color white blacker.
	builder
		nodes: packagesModel
		forEach: [ :package |
			builder shape platform
				height: 5;
				color: [ :class |
					(class isForeign)
						ifTrue: [ Color black ]
						ifFalse: [  
							CCColorNormalizer new
								low: Color gray darker;
								high: Color red darker;
								population: (allTargets);
								transformation: [ :class2 | (rulesByViolator at: class2 mirroredEntity ifAbsent: #()) size ];
								ccValue: class] ].
			builder
				nodes: package descendents
				forEach: [ :class |
						builder shape box color: 
									(CCColorNormalizer new
									low: Color gray lighter;
									high: Color red lighter;
									population: (allTargets);
									transformation: [ :method1 | (rulesByViolator at: method1 mirroredEntity ifAbsent: #()) size ]).
					builder nodes: class descendents.
					builder wallLayout outerGap: (CCPoint xz: 5 y: 0) ].
			builder packingLayout innerGap: 20 asCCPoint ].
	builder packingLayout innerGap: 40 asCCPoint.
	
	^ builder
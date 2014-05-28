visualization
ccBuilder
	"CodeCity viz"
	| builder rulesByViolator allTargets |
	allTargets := self target packages flatCollect: [ :pac | pac classes, pac methods ].
	rulesByViolator := self rulesByViolator.
	builder := CCBuilder new.
	builder shape platform color: Color white blacker.
	builder
		nodes: self target packages
		forEach: [ :package |
			builder shape platform
				height: 5;
				color: [ :class |
					(self target definesClass: class)
						ifFalse: [ Color white ]
						ifTrue: [  
							CCColorNormalizer new
								low: Color gray darker;
								high: Color red darker;
								population: (allTargets);
								transformation: [ :class2 | (rulesByViolator at: class2 ifAbsent: #()) size ];
								ccValue: class] ].
			builder
				nodes: package classes
				forEach: [ :class |
						builder shape box color: [ :method |
							(self target includesMethod: method)
								ifFalse: [ Color white ]
								ifTrue: [  
									CCColorNormalizer new
									low: Color gray lighter;
									high: Color red lighter;
									population: (allTargets);
									transformation: [ :method2 | (rulesByViolator at: method2 ifAbsent: #()) size ];
									ccValue: method ] ].
					builder nodes:
						(class methods reject: [ :m | self target includesMethod: m ]),
						((class methods select: [ :m | self target includesMethod: m ]) sort: [ :a :b |
							(rulesByViolator at: a ifAbsent: #()) size <
							(rulesByViolator at: b ifAbsent: #()) size  ]).
					builder wallLayout outerGap: (CCPoint xz: 5 y: 0) ].
			builder packingLayout innerGap: 20 asCCPoint ].
	builder packingLayout innerGap: 40 asCCPoint.
	
	^ builder
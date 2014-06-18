vizualization
ccBuilder
	"CodeCity viz"
	| builder rulesByViolator allTargets normalizer |
	allTargets := packages, (packages flatCollect: #allDescendents).
	rulesByViolator := self rulesByViolator.
	normalizer := CCColorNormalizer new
		low: Color gray;
		high: Color red;
		population: (allTargets);
		transformation: [ :entity |
			(rulesByViolator at: entity mirroredEntity ifAbsent: #()) size ].
	
	builder := CCBuilder new.
	builder shape platform color: Color white darker.
	builder
		nodes: packages
		forEach: [ :package |
			builder shape platform
				height: 5;
				color: [ :class |
					(class isForeign)
						ifTrue: [ Color black ]
						ifFalse: [ normalizer ccValue: class ]].
			builder
				nodes: package descendents
				forEach: [ :class |
					builder shape box color: normalizer.
					builder nodes: class descendents.
					builder wallLayout outerGap: (CCPoint xz: 5 y: 0) ].
			builder packingLayout innerGap: 20 asCCPoint ].
	builder packingLayout innerGap: 40 asCCPoint.
	
	builder announcer on: CCNodeSelected do: [ :ann |
		ann node model browse ].
	
	^ builder 
visualization
roBuilder
	| builder methods classes allPackages maxViolations rulesByViolator |
	
	methods := Set new.
	classes := Set new.
	
	rulesByViolator := self rulesByViolator.
	self target packages do: [ :pac |
		methods addAll: pac methods.
		classes addAll: pac classes. ].
	
	allPackages := classes collect: #package.
	
	maxViolations := methods, classes inject: 0 into: [ :max :entity |
		(rulesByViolator at: entity ifAbsent: #()) size max: max ].
	
	builder := ROTreeMapBuilder new.
	builder weightBlock: [ :entity | entity linesOfCode max: 1 ].
	builder origin: 10@10.	
	builder extent: 800@600.
	builder nodes: allPackages, classes, methods.
	builder nestingFromAssociations:
		(classes collect: [ :c | c package -> c ]),
		(methods collect: [ :m |
			| class |
			class := m methodClass.
			class isMeta ifTrue: [ class := class baseClass ].
			class -> m ]).
		
	builder colorBlock: [ :element |
		| color |
		color := Color white.
		
		(element model isKindOf: RPackage)
		ifTrue: [ (self target packages includes: element model) ifFalse: [
				color := Color lightGray ]. ]
		ifFalse: [
			color := Color red
				mixed: (rulesByViolator at: element model ifAbsent: #()) size / maxViolations
				with: Color white ].
		(element model isKindOf: Behavior) ==> [ self target definesClass: element model ]
			ifFalse: [ color := Color lightGray ].
		
		color ].
		
	^ builder
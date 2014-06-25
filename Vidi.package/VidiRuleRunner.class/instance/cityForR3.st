visualization
cityForR3
	| maxViolations rulesByViolator color |
	
	rulesByViolator := self rulesByViolator.
	
	maxViolations := self packagesModel entities inject: 0 into: [ :max :entity |
		(rulesByViolator at: entity mirroredEntity ifAbsent: #()) size max: max ].	
	color := [ :element |
		element model isForeign
			ifTrue: [
				Color black ]
			ifFalse: [
				Color red
					mixed: (rulesByViolator
						at: element model mirroredEntity
						ifAbsent: #()) size
						/
						maxViolations
					with: Color gray ] ].
	
	^ self packagesModel packages collect: [ :package |
		(District on: package)
			label: package name;
			subBuildings: (package classes collect: [ :class |
				| building |
				building := Building on: class.
				building color: color.
				class methods do: [ :method |
					building addBrick: (
						(Brick on: method)
							color: color;
							yourself) ].
				building ]) ]
	
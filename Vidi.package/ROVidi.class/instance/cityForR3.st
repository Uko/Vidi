private
cityForR3
	| color |
	
		color := [ :element |
		self maxViolations
			ifNil: Color gray
			ifNotNilDo: [ :violations |
				Color red
					mixed: (self rulesByViolator
						at: element model mirroredEntity
						ifAbsent: #()) size
						/
						violations size
					with: Color gray ] ] .
	
	^ self packagesModel packages collect: [ :package |
		(District on: package)
			label: package name;
			subBuildings: (package classes collect: [ :class |
				| building |
				building := Building on: class.
				building color: (
					(class isForeign)
						ifTrue: [ Color black ]
						ifFalse: [ color ]).
				class methods do: [ :method |
					building addBrick: (
						(Brick on: method)
							color: color;
							yourself) ].
				building ] ) ]
event handling
cityForR3
	
	^ self packagesModel packages collect: [ :package |
		(District on: package)
			label: package name;
			subBuildings: (package descendents collect: [ :class |
				| building |
				building := Building on: class.
				building color: (
					(class isForeign)
						ifTrue: [ Color black ]
						ifFalse: [ self colorBlock ]).
				class methods do: [ :method |
					building addBrick: (
						(Brick on: method)
							color: self colorBlock;
							yourself) ].
				building ] ) ]
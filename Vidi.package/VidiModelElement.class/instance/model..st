accessing
model: aModel

	self model = aModel ifTrue: [ ^ self ].

	self on: aModel.
	self removeAll.
	self addAll:
		(aModel packages collect: [ :pack |
			VidiPackageElement new
				package: pack;
				yourself ])
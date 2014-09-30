accessing
package: aPackage


	self model = aPackage ifTrue: [ ^ self ].

	self on: aPackage.
	self removeAll.
	self addAll:
		(aPackage descendents collect: [ :class |
			VidiClassElement new
				class: class;
				yourself ])
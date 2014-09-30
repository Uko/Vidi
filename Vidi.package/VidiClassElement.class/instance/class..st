accessing
class: aClass
	
	self model = aClass ifTrue: [ ^ self ].

	self on: aClass.
	self removeAll.
	self addAll:
		(aClass descendents collect: [ :method |
			VidiMethodElement new
				method: method;
				yourself ]).
			
	self morph.
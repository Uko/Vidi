accessing
entity: anObject
	entity := anObject.
	itemTitle text: (entity ifNil: [ '' ] ifNotNilDo: #name).
	self resetTextModel.
	self resetCritList.
accessing
entity: anObject
	entity := anObject.
	itemTitle label: (entity ifNil: [ '' ] ifNotNilDo: #name).
	self resetTextModel.
	self resetCritList.
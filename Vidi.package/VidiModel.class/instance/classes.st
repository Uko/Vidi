as yet unclassified
classes
	^ classes ifNil: [ classes := self packages flatCollect: #descendents ]
initialize
"protocol: as yet unclassified"
initialize
	super initialize.
	children := [ self content ifNotNilDo: #rules ] asValueHolder.
	childNodeClass := VidiRuleNode asValueHolder.
	hasChildren := true asValueHolder.
	
	self whenSelectedChanged: [ :bool |
		self contents do: [ :c | c selected: bool ] ]
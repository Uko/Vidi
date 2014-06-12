as yet unclassified
allDescendents
	^ self descendents, (self descendents flatCollect: #allDescendents)
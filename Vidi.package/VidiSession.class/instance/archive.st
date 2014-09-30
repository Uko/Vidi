serialization
archive

	self active ifTrue: [ 
		self stop ifFalse: [ ^ self ] ].
	
	self serializeToFileNamed: FileLocator desktop fullPath / 'VidiReactor' / (self stamp, '.fuel') 
	
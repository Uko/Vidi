as yet unclassified
openVidi
	self active ifFalse: [ ^ self complain ].
	model vidi openWithSpec 
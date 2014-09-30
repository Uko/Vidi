actions
openVidi
	self active ifFalse: [ ^ self complain ].
	model vidi openWithSpec 
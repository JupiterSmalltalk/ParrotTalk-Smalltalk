stack
upcall: frame

	self doesPop 
		ifTrue: [	frame readFrom: (self upThunk value: frame) readStream ]
		ifFalse: [ self upThunk value: frame ].

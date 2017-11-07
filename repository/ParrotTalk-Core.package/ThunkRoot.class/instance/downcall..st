stack
downcall: frame

	self doesPush
		ifTrue: [
			frame payload: (self downThunk value: frame).
			frame header: (self headerMakerThunk value: frame) ]
		ifFalse: [ self downThunk value: frame ]
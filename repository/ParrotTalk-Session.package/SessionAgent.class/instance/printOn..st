initialize-release
printOn: stream

	super printOn: stream.
	stream nextPut: $(.
	connectionQueue notNil
		ifTrue: [stream nextPutAll: '<running>']
		ifFalse: [stream nextPutAll: '<stopped>'].
	stream nextPut: $).
	stream nextPutAll: ' : '.
	stream nextPutAll: self vatId.
	

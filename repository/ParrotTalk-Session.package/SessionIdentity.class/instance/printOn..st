printing
printOn: aStream

	aStream nextPutAll: 'cap://'.
	self socketAddress notNil ifTrue: [self socketAddress printOn: aStream].
	aStream nextPutAll: '/'.
	self vatId notNil ifTrue: [aStream nextPutAll: self vatId asString].

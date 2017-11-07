initialize
initializeOn: aStack

	self initialize.
	stack := aStack.
	bufferStream := ReadWriteStream on: (ByteArray new: 12288).

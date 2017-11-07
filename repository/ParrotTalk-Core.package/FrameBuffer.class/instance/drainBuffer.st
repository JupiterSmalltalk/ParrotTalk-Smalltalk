stack
drainBuffer

	| remainingFrameSize frameSpecSize | 
	frameSpecSize := Frame specificationSize.	
	[readFrame notNil or: [bufferStream size >= frameSpecSize]] whileTrue: [
		readFrame ifNil: [readFrame := Frame onFrameSpecification: (bufferStream next: frameSpecSize)].
		remainingFrameSize := readFrame encodedSize.
		(remainingFrameSize < 0) ifTrue: [CryptographyError signal: 'frame messageSize failure'].
		(bufferStream size < remainingFrameSize) ifTrue: [^ self].
		readFrame readRemainderFrom: (bufferStream next: remainingFrameSize) readStream.
		(readFrame frameVersion == 1)
			ifTrue: [[[ stack upcall: readFrame from: self ] 
				on: Halt do: [:halt | halt resumeUnchecked: halt defaultAction ]]
				on: Exception do: [:ex | ex pass]].
		readFrame := nil.
		(bufferStream size = 0) ifTrue: [bufferStream reset]].
	

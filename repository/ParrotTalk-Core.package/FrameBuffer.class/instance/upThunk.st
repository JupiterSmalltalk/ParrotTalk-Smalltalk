thunk - accessing
upThunk

	^ [:frame | | startPos |
		startPos := bufferStream position.
		bufferStream nextPutAll: frame payload.
		bufferStream position: startPos.
		self drainBuffer.
		BlockCannotReturn signal: 'frameBuffer drained' ].
conversion
readRemainderFrom: stream

	self header: (PhaseHeader readFrom: stream).
	self payload: stream upToEnd.
	self recomputeSpec.